{
  fetchFromGitHub,
  stdenv,
  lib,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "";
  version = "";

  src = fetchFromGitHub {
    owner = "";
    repo = "";
    rev = "v${finalAttrs.version}";
    hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  nativeBuildInputs = [

  ];
  buildInputs = [

  ];

  meta = {
    description = "";
    homepage = "";
    # license = lib.licenses.;
    maintainers = with lib.maintainers; [ ];
  };
})
