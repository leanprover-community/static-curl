# static-curl
Static curl binaries for mathlib4 `lake exe cache`.

Build each binary on the matching Linux architecture with Nix:

```sh
nix-build -A bin --out-link result
cp result-bin/bin/curl "curl-$(uname -m)-linux-static"
```
