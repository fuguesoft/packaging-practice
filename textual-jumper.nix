{
  lib,
  # stdenv,
  fetchFromGitHub,
  python3,
  python314Packages,
  # gnumake,
}:
python3.pkgs.buildPythonPackage (finalAttrs: {
  pname = "textual-jumper";
  version = "0.2.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "textual-jumper";
    tag = "v${finalAttrs.version}";
    hash = "sha256-F3TA8ZWAFYxc1vSo2Cu5WSTr78rf/IO7hs+L4voT8Jw=";
  };

  buildInputs = with python3.pkgs; [
    uv
  ];

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    wheel
    hatch
  ];

  # makeFlags = [ "PREFIX=$(out)" ];
})
