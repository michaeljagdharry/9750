with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "SoftwareToolsForDataAnalysisProject";
  buildInputs = [
    texlive.combined.scheme-full
    tree
    R
    pandoc
    rPackages.rmarkdown
    rPackages.nycflights13
    rPackages.viridis
    rPackages.tidyverse
    rPackages.ALSM
    rPackages.nortest
    rPackages.alr4
    rPackages.lmtest
    rPackages.EnvStats
  ];
# https://github.com/NixOS/nix/issues/1305#issuecomment-529195265
  src =  ./.;
# https://nixos.org/nixpkgs/manual/#sec-using-stdenv
  configurePhase = "";
  buildPhase = ''
    make project.pdf
  '';
  # put build result here later - leaving here to shut up make install, the default.
  # what to do? setup.py? twine? publish to PyPI?
  installPhase = ''
    mkdir -p $out
    cp project.pdf $out
  '';
}
