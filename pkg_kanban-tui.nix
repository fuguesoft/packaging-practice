# this needs a package called textual-jumper which needs to be packaged
# separately and is also slop code so I may not even do it.
# spoiler alert: I did it
{
  buildPythonApplication,
  fetchFromGitHub,
  hatch,
  prek,
  pydantic-settings,
  python-dateutil,
  setuptools,
  textual,
  textual-jumper,
  textual-plotext,
  tzdata,
  uv,
  wheel,
  xdg-base-dirs,
}:
buildPythonApplication rec {
  pname = "kanban-tui";
  version = "0.21.1";
  pyproject = true;

  build-system = [ setuptools ];

  src = fetchFromGitHub {
    owner = "Zaloog";
    repo = "kanban-tui";
    rev = "v${version}";
    hash = "sha256-FZTUNkoKYJVVn7QD96Z9c9y+kMdAI0eEkZ/jN1I0sbk=";
  };

  nativeBuildInputs = [
    setuptools
    wheel
    hatch
  ];

  propagatedBuildInputs = [
    uv
    prek
    pydantic-settings
    python-dateutil
    textual
    textual-jumper
    textual-plotext
    tzdata
    xdg-base-dirs
  ];

}
