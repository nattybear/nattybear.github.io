{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.haskellPackages.hakyll
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.ghc
  ];
}
