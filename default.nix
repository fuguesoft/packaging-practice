let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-26.05";
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
