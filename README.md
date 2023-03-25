# static-curl
Static curl binaries for mathlib4 `lake exe cache`

Generated using
```sh
for sys in aarch64-linux x86_64-linux; do nix build github:NixOS/nixpkgs/8f40f2f90b9c9032d1b824442cfbbe0dbabd0dbd#pkgsStatic.curl --system $sys; cp result-bin/bin/curl curl-$sys-static; done
```
