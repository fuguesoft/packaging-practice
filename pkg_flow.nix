{
  fetchFromGitHub,
  rustPlatform,
  # ratatui,
  # reqwest,
  # serde,
  # serde_json,
  # crossterm,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "flow";
  version = "";

  src = fetchFromGitHub {
    owner = "jsubroto";
    repo = "flow";
    rev = "8180ccf881efee92113b2e2816fa6d34e5d60947";
    sha256 = "sha256-inP7KW8qfF/v58nrHKbGz0UJ08JKmfJCppVmzWcLZy0=";
    # hash = "sha256-8180ccf881efee92113b2e2816fa6d34e5d60947";
  };

  cargoHash = "sha256-HA4puD7y5SJRbmjTrlHSehgApVr99jS3EopzeJ0kco4=";
  checkFeatures = [

  ];

  buildInputs = [
    # ratatui
    # reqwest
    # serde
    # serde_json
    # crossterm
  ];
})
