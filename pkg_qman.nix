{
  stdenv,
  man,
  # apropos,
  python314Packages,
  gcc,
  ncurses,
  groff,
  fetchFromGitHub,
  meson,
  pkg-config,
  # gnumake,
  cmake,
  zlib,
  bzip2,
  xz,
  cunit,
  # liblzma,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "qman";
  version = "1.5.1";

  src = fetchFromGitHub {
    owner = "plp13";
    repo = "qman";
    rev = "v${finalAttrs.version}";
    hash = "sha256-z3ILbbwcCYZT8qabVaGnMCyZRag8djEI32i6G7cLL2A=";
  };

  nativeBuildInputs = with python314Packages; [
    gcc
    meson
    cogapp
    pkg-config
    cmake
    zlib
    bzip2
    xz
    cunit
  ];

  buildInputs = [
    man
    # apropos
    ncurses
    groff

  ];

  # meta = {
  #   description = "";
  #   homepage = "";
  #   license = lib.licenses.;
  #   maintainers = with lib.maintainers; [  ];
  # };
})
