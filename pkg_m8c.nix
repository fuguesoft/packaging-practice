{
  stdenv,
  sdl3,
  libserialport,
  lib,
  gcc,
  git,
  pkg-config,
  cmake,
  fetchFromGitHub,
}:
{
  stdenv.mkDerivation = (
    finalAttrs: {
      pname = "m8c";
      version = "2.2.3";

      src = fetchFromGitHub {
        owner = "laamaa";
        repo = "m8c";
        rev = "v${finalAttrs.version}";
        hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
      };

      nativeBuildInputs = [

      ];
      buildInputs = [

      ];

      # meta = {
      #   description = "";
      #   homepage = "";
      #   license = lib.licenses."jason";
      #   maintainers = with lib.maintainers; [ ];
      # };
    }
  );

}
