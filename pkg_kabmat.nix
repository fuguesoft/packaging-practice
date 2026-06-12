{
  stdenv,
  fetchFromGitHub,
  ncurses,
  gnumake,
  writableTmpDirAsHomeHook,
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
    writableTmpDirAsHomeHook
  ];

  buildInputs = [
    ncurses
  ];

  # patches = [ ./kabmat.patch ];
  postPatch = ''
    substituteInPlace src/helpers/consts.h \
      --replace-fail '#define DATA_FILE (string(getenv("HOME")) + "/.local/share/kabmat/data")' '#define DATA_FILE "/usr/local/share/kabmat/data"'
      --replace-fail '#define DATA_BACKUP_FILE \ (string(getenv("HOME")) + "/.local/share/kabmat/data_bkp")' '#define DATA_BACKUP_FILE "/usr/local/share/kabmat/data_bkp"'
  '';

  makeFlags = [
    "PREFIX=$(out)"
    "DATA_DIR=$(out)"
  ];
}
