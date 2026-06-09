# this needs a package called textual-jumper which needs to be packaged
# separately and is also slop code so I may not even do it.
{
  python3,
  fetchFromGitHub,
  uv,
  prek,
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
  };

  nativeBuildInputs = with python3.pkgs; [
    setuptools
    wheel
    hatch
  ];

  buildInputs = with python3.pkgs; [
    uv
    prek
    pydantic-settings
    python-dateutil
    textual
    # textual-jumper
    textual-plotext
    tzdata
    xdg-base-dirs
  ];
}
