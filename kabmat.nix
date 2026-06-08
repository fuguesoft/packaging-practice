{
  stdenv,
  # fetchFromGitHub,
  fetchFromGitHub,
  ncurses,
  gnumake,
}:

stdenv.mkDerivation {
  pname = "kabmat";
  version = "2.7.0";

  src = fetchFromGitHub {
    owner = "PlankCipher";
    repo = "kabmat";
    rev = "02518704976d108a356d685bf351de17142dd76f";
    sha256 = "sha256-AXTSwJTKwN909QgQtVgwDJgYVrI2ED0bJNmbzh/Kph0=";
  };

  nativeBuildInputs = [
    gnumake
  ];

  buildInputs = [
    ncurses
  ];

  makeFlags = [
    "PREFIX=$(out)"
    # "DESTDIR=$(out)"
    "DATA_DIR=$(out)"
  ];

  # dontInstall = true;

  # installPhase = ''
  #   runHook preInstall
  #   # mkdir -p $out/build/source
  #   # touch $out/build/source/CMakeList.txt
  #   # make
  #   # sudo make install
  #   runHook postInstall
  #   # mkdir -p $out/build/source
  # '';

}
