{
  lib,
  # stdenv,
  fetchFromGitHub,
  python3,
  python314Packages,
  pkgs,
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
    # uv

    # uv_build<0.9.0,>=0.8.19
    # uv-build
    # (uv-build.overrideAttrs (previousAttrs: {
    #   version = "0.8.19";
    #   src = fetchFromGitHub {
    #     owner = "";
    #     repo = "";
    #     rev = "";
    #     has = pkgs.lib.fakeHash;
    #   };
    # }))

    # (uv-build.override {
    #   version = "0.8.19";
    # })

    # uv-build is part of uv so don't know what's up with this

  ];

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    wheel
    hatch
    uv
    # (uv-build.overrideAttrs (previousAttrs: {
    #   version = "0.8.19";
    # }))
  ];

  # makeFlags = [ "PREFIX=$(out)" ];
})
