{
  pkgs ? import <nixpkgs> { },
}:
{
  kabmat = pkgs.callPackage ./kabmat.nix { };
  # kanban-tui = pkgs.callPackage ./kanban-tui.nix { };
}
