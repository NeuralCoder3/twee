{ pkgs ? import <nixpkgs> {} }:

let
  hs = pkgs.haskellPackages;
in
pkgs.mkShell {
  buildInputs = [
    pkgs.ghc
    hs.cabal-install
    # any Haskell libraries required, e.g. hs.twee-lib
  ];

  shellHook = ''
    echo "Using GHC: $(ghc --version)"
    echo "Using cabal: $(cabal --version)"
  '';
}
