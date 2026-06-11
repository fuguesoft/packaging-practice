{
  fetchFromGitHub,
  python,
}:
python.pkgs.buildPythonPackage (finalAttrs: {
  pname = "textual-jumper";
  version = "0.2.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "textual-jumper";
    tag = "v${finalAttrs.version}";
    hash = "sha256-F3TA8ZWAFYxc1vSo2Cu5WSTr78rf/IO7hs+L4voT8Jw=";
  };

  buildInputs = with python.pkgs; [
    uv
    # textual
  ];

  nativeBuildInputs = with python.pkgs; [
    textual
    setuptools
    wheel
    hatch
    uv
  ];

  build-system = with python.pkgs; [ uv-build ];

  postPatch = ''
    substituteInPlace pyproject.toml \
      --replace-fail 'uv_build>=0.8.19,<0.9.0' 'uv_build>=0.8.3'
  '';

})
