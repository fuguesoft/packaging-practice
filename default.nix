{ lib, ... }:
let
  # nixpkgs = fetchTarball {
  #   url = "https://github.com/NixOS/nixpkgs/archive/9b696460ac78b5ccfc17c854d8c976f20456e943.tar.gz";
  #   sha256 = "";
  # };

  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/9b696460ac78b5ccfc17c854d8c976f20456e943.tar.gz";
    # url = "https://releases.nixos.org/nixos/26.05/nixos-26.05.1183.6b316287bae2/nixexprs.tar.xz";
    hash = "sha256-9b696460ac78b5ccfc17c854d8c976f20456e943";
    # sha256 = lib.fakeSha256; # replace after error / with result of nix-prefetch-rul
    # sha256 = "0wp4hqw5pgjvmgqq566i064dwg6k97wd1basxc5lwbf2nn2ih8ld";
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
