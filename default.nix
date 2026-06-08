let
  # nixpkgs = fetchTarball {
  #   url = "https://github.com/NixOS/nixpkgs/archive/9b696460ac78b5ccfc17c854d8c976f20456e943.tar.gz";
  #   sha256 = "";
  # };

  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/9b696460ac78b5ccfc17c854d8c976f20456e943.tar.gz";
    # url = "https://releases.nixos.org/nixos/26.05/nixos-26.05.1183.6b316287bae2/nixexprs.tar.xz";
    sha256 = "1syqpgmk84bqjwf6l3b34b2j1h70760k1rb5715q85chvlzxyr0f";
    # sha256 = "sha256-9b696460ac78b5ccfc17c854d8c976f20456e943";
    # sha256 = lib.fakeSha256; # replace after error / with result of nix-prefetch-rul
    # sha256 = ""; # replace after error / with result of nix-prefetch-rul
  };

  # nixpkgs = fetchTarball {
  #   url = "https://github.com/NixOS/nixpkgs/tarball/nixos-26.05";
  #   sha256 = "";
  # };
  pkgs = import nixpkgs {
    config = { };
    overlays = [ ];
  };
in
{
  # curl-sidequests = pkgs.callPackage ./curl-sidequests.nix { };
  # flow-kanban = pkgs.callPackage ./flow-kanban.nix { };
  # qman = pkgs.callPackage ./qman.nix { };
  kabmat = pkgs.callPackage ./kabmat.nix { };
  # kanban-tui = pkgs.callPackage ./kanban-tui.nix { };
}
