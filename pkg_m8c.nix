{
  gnumake,
  fetchFromGitHub,
  gcc,
  git,
  lib,
  libserialport,
  libusb-compat-0_1,
  pkg-config-unwrapped,
  sdl3,
  copyDesktopItems,
  # sdl3-mixer,
  # SDL2,
  stdenv,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "m8c";
  version = "2.2.3";

  src = fetchFromGitHub {
    owner = "laamaa";
    repo = "m8c";
    rev = "v${finalAttrs.version}";
    hash = "sha256-cr5tat7JOFJ7y7AEinphgV/5T138gV6jidb87GooZ8U=";
  };

  nativeBuildInputs = [
    gcc
    git
    libusb-compat-0_1
    gnumake
    pkg-config-unwrapped
    copyDesktopItems

  ];

  buildInputs = [
    libserialport
    sdl3
  ];

  # meta = {
  #   description = "";
  #   homepage = "";
  #   license = lib.licenses."jason";
  #   maintainers = with lib.maintainers; [ ];
  # };
})
