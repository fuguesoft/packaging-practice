{
  stdenv,
  fetchFromGitHub,
  ncurses,
  cmake,
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
    sha256 = "EnkW14L/y20IrSDxO7kbMP33/jEMKCLR6+m3V92BfMQ=";
    # sha256 = "02518704976d108a356d685bf351de17142dd76f";
  };

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [
    ncurses
    gcc
  ];

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
