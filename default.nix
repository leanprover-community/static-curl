{ system ? builtins.currentSystem }:
let
  pkgs = import (builtins.fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/55bfb4d7437bd4e09ab7cba58a43bd68eb310044.tar.gz") {
    inherit system;
  };
in
pkgs.pkgsStatic.curl.overrideAttrs (old: {
  version = "8.23.0";
  src = pkgs.fetchurl {
    url = "https://github.com/curl/curl/releases/download/curl-8_23_0/curl-8.23.0.tar.xz";
    sha256 = "8dadd7d2536a314f982ad05a651b713f426bf7d02cc2c76cffb9796f2218e6c5";
  };
  configureFlags = old.configureFlags ++ [
    "--with-ca-bundle=/etc/ssl/certs/ca-certificates.crt"
    "--with-ca-path=/etc/ssl/certs"
  ];
})
