{
  stdenv,
  fetchFromGitHub,
  cmake,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "SDL";
  version = "3.4.12";

  src = fetchFromGitHub {
    owner = "libsdl-org";
    repo = "SDL";
    rev = "${finalAttrs.version}";
    hash = "";
  };

  nativeBuildInputs = [
    cmake

  ];
  buildInputs = [

  ];

  # meta = {
  #   description = "";
  #   homepage = "";
  #   license = lib.licenses.;
  #   maintainers = with lib.maintainers; [  ];
  # };
})
