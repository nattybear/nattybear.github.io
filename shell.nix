{ pkgs ? import <nixpkgs> {} }:
pkgs.haskellPackages.developPackage {
  root = ./.;
  name = "hakyll-site";

  buildInputs = [
    pkgs.haskellPackages.hakyll
    pkgs.haskellPackages.ghc
    pkgs.haskellPackages.cabal-install
  ];

  src = ./.;
}
