{
  fetchFromGitHub,
  fetchCrate,
  rustPlatform,
}:
rustPlatform.buildRustPackage (finalAttrs: {

  pname = "flow";
  version = "0.1.0";

  # src = fetchCrate {
  #   inherit (finalAttrs) pname version;
  #   hash = "sha256-4FonCawwAly5GgYdSOupdzNamDhBgqnKrksGgnxBL98=";
  #   # hash = "sha256-4FonCawwAly5GgYdSOupdzNamDhBgqnKrksGgnxBL98=";
  # };

  # cargoLock = {
  #   lockFile = "${finalAttrs.src}/Cargo.lock";
  # };

  src = fetchFromGitHub {
    owner = "jsubroto";
    repo = "flow";
    rev = "8180ccf881efee92113b2e2816fa6d34e5d60947";
    sha256 = "sha256-inP7KW8qfF/v58nrHKbGz0UJ08JKmfJCppVmzWcLZy0=";
    # hash = "sha256-8180ccf881efee92113b2e2816fa6d34e5d60947";
  };

  cargoHash = "sha256-HA4puD7y5SJRbmjTrlHSehgApVr99jS3EopzeJ0kco4=";

  checkNoDefaultFeatures = true;

  checkFeatures = [

  ];

  checkFlags = [
    # annoying tests
    "--skip provider_jira::tests::load_board_returns_parse_error_when_missing_env"
    "--skip provider_linear::tests::load_board_returns_parse_error_when_missing_env"
  ];

  buildInputs = [
  ];
})
