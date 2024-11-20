{ pkgs ? import <nixpkgs> {} }:
pkgs.haskellPackages.developPackage {
  root = ./.;
  name = "hakyll-site";
  version = "0.1.0.0";

  buildInputs = [
    pkgs.haskellPackages.hakyll
    pkgs.haskellPackages.ghc
    pkgs.haskellPackages.cabal-install
  ];

  src = ./.;
}
