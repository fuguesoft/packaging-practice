{
  stdenv,
  fetchFromGitHub,
  uv,
  gnumake,
  prek,
}:
stdenv.mkDerivation rec {
  pname = "kanban-tui";
  version = "0.21.1";

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "kanban-tui";
    rev = "v${version}";
    sha256 = "FZTUNkoKYJVVn7QD96Z9c9y+kMdAI0eEkZ/jN1I0sbk=";
    # hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  nativeBuildInputs = [
    gnumake
  ];

  buildInputs = [
    uv
    prek
  ];

}
