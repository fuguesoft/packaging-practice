{
  lib,
  stdenv,
  fetchFromGitHub,
}:
{
  stdenv.mkDerivation = (
    finalAttrs: rec {
      pname = "textual-jumper";
      version = "0.2.1";

      src = fetchFromGitHub {
        owner = "Zaloog";
        repo = "textual-jumper";
        rev = "v${version}";
        hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
      };

      nativeBuildInputs = [

      ];
      buildInputs = [

      ];

    }
  );
}
