{
  stdenv,
  fetchFromGitHub,
  ncurses,
  gnumake,
  sudo,
  gcc,
}:

stdenv.mkDerivation rec {
  pname = "kabmat";
  version = "2.7.0";

  src = fetchFromGitHub {
    owner = "PlankCipher";
    repo = "kabmat";
    tag = "v${version}";
    # rev = "${version}";
    sha256 = "02518704976d108a356d685bf351de17142dd76f";
    # sha256 = "EnkW14L/y20IrSDxO7kbMP33/jEMKCLR6+m3V92BfMQ=";

  };

  nativeBuildInputs = [
    gnumake
  ];

  buildInputs = [
    ncurses
    gcc
    sudo
  ];

  makeFlags = [
    "DESTDIR=$(out)"
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
