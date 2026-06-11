{
  stdenv,
  fetchFromGitHub,
  uv,
  gnumake,
  prek,
  writableTmpDirAsHomeHook,
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
    writableTmpDirAsHomeHook
  ];

  buildInputs = [
    uv
    prek
  ];

  # buildPhase = ''
  #   runHook writable-tmpdir-as-home.sh
  # '';

  # buildPhase = ''
  #   runHook preBuild
  #
  #   writable-tmpdir-as-home.sh
  #
  #   runhook postBuild
  # '';

  makeFlags = [
    "PREFIX=$(out)"
  ];

}
