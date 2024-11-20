{ pkgs ? import <nixpkgs> {} }:

let
  customPkgs = pkgs // {
    glibc = pkgs.glibc.override { version = "2.33"; };
  };
in
customPkgs.mkShell {
  buildInputs = [
    customPkgs.haskellPackages.hakyll
    customPkgs.haskellPackages.cabal-install
    customPkgs.haskellPackages.ghc
  ];
}
