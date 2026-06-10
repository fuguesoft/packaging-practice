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

    # (pkgs.uv-build.overrideAttrs (previousAttrs: rec {
    #   name = "blegh";
    #   version = "urmum";
    #   src = pkgs.fetchFromGitHub {
    #     owner = "";
    #     repo = "";
    #     rev = "v${version}";
    #     hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
    #   };
    # });
    # );

  ];

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    wheel
    hatch
    # uv
    (uv-build.overrideAttrs (previousAttrs: {
      version = "0.8.19";
    }))
  ];

  # makeFlags = [ "PREFIX=$(out)" ];
})
