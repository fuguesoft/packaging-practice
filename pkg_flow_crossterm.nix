# commit hash for release 0.29
# 36d95b26a26e64b0f8c12edfe11f410a6d56a812
{
  fetchFromGitHub,
  rustPlatform,
  base64,
  bitflags,
  derive_more,
  filedescriptor,
  futures-core,
  libc,
  mio,
  parking_lot,
  rustix,
  serde,
  signal-hook,
  signal-hook-mio,
}:
rustPlatform.buildRustPackage rec {
  pname = "crossterm";
  version = "";

  src = fetchFromGitHub {
    owner = "crossterm-rs";
    repo = "crossterm";
    # rev = "v${version}";
    sha256 = "";
    # hash = "sha256-8180ccf881efee92113b2e2816fa6d34e5d60947";
  };

  buildInputs = [
    # ratatui
    # reqwest
    # serde
    # serde_json
    # crossterm
  ];
}
