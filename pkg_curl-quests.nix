{
  fetchFromGitHub,
  curl,
  jq,
  cargo,
  rustc,
  rustPlatform,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "curl-quests";
  version = "";
  # cargoLock.lockFile = ./Cargo.lock;

  src = fetchFromGitHub {
    owner = "lite-quests";
    repo = "curl-quests";
    rev = "b98a817b002ae8a89d9f1e7ab03fad0366bb84e0";
    hash = "sha256-q8mGz2lqCGk/XJupal8rkE3IalqOQAtTOdHg72NZSKc=";
  };

  cargoHash = "sha256-AJAbTdWDa7bhnS5bhuVwfBc0XhTCm8F9yUBWe+u23/o=";

  nativeBuildInputs = [

  ];

  buildInputs = [
    cargo
    curl
    jq
    rustc
  ];

  # meta = {
  #   description = "";
  #   homepage = "";
  #   # license = lib.licenses.;
  #   maintainers = with lib.maintainers; [ ];
  # };

})
