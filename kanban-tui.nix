{
  lib,
  python3,
  fetchFromGitHub,
  # buildPythonPackage,
  # setuptools,
  # uv,
  # gnumake,
  # prek,
  # python314Packages.wheel,
  # writableTmpDirAsHomeHook,
}:
python3.pkgs.buildPythonApplication rec {
  pname = "kanban-tui";
  version = "0.21.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "kanban-tui";
    rev = "v${version}";
    hash = "sha256-FZTUNkoKYJVVn7QD96Z9c9y+kMdAI0eEkZ/jN1I0sbk=";
    # inherit pname version;
    # sha256 = "FZTUNkoKYJVVn7QD96Z9c9y+kMdAI0eEkZ/jN1I0sbk=";
    # owner = "Zaloog";
    # repo = "kanban-tui";
    # rev = "v${version}";
    # hash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
  };

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    # gnumake
    # writableTmpDirAsHomeHook
  ];

  # build-system = [ setuptools ];
  # dependencies = [ setuptools ];

  buildInputs = [
    # uv
    # prek
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

  # makeFlags = [
  #   "PREFIX=$(out)"
  # ];

}
