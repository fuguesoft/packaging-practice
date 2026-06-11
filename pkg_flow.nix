{
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "flow-kanban";
  version = "";

  src = fetchFromGitHub {
    owner = "jsubroto";
    repo = "flow";
    # rev = "v${version}";
    sha256 = "";
    # hash = "sha256-8180ccf881efee92113b2e2816fa6d34e5d60947";
  };

  buildInputs = [ ];
}
