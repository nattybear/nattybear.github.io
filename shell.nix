{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.haskellPackages.hakyll
    pkgs.haskellPackages.cabal-install
    pkgs.haskellPackages.ghc
    pkgs.glibc_2_33
  ];

  shellHook = ''
    export CFLAGS="-D_GLIBCXX_USE_CXX11_ABI=0"
  '';
}
