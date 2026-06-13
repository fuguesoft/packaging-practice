{
  fetchFromGitHub,
  rustPlatform,
  ratatui,
  reqwest,
  serde,
  serde_json,
  crossterm,
}:
rustPlatform.buildRustPackage rec {
  pname = "flow";
  version = "";

  src = fetchFromGitHub {
    owner = "jsubroto";
    repo = "flow";
    # rev = "v${version}";
    sha256 = "";
    # hash = "sha256-8180ccf881efee92113b2e2816fa6d34e5d60947";
  };

  cargoHash = "";

  buildInputs = [
    # ratatui
    # reqwest
    # serde
    # serde_json
    # crossterm
  ];
}
