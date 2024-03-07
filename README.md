# static-curl
Static curl binaries for mathlib4 `lake exe cache`

Generated using
```sh
for sys in aarch64-linux x86_64-linux; do nix build github:NixOS/nixpkgs/9df3e30ce24fd28c7b3e2de0d986769db5d6225d#pkgsStatic.curl --system $sys; cp result-bin/bin/curl curl-$sys-static; done
```
