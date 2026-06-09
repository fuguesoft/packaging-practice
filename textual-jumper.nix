{
  lib,
  stdenv,
  fetchFromGitHub,
  # gnumake,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "textual-jumper";
  version = "0.2.1";

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "textual-jumper";
    tag = "v${finalAttrs.version}";
    hash = "sha256-F3TA8ZWAFYxc1vSo2Cu5WSTr78rf/IO7hs+L4voT8Jw=";
  };

  nativeBuildInputs = [
    # gnumake
  ];
  buildInputs = [

  ];

  # makeFlags = [ "PREFIX=$(out)" ];
})
