{
  pkgs ? import <nixpkgs> { },
}:
{
  kabmat = pkgs.callPackage ./kabmat.nix { };
  kanban-tui = pkgs.callPackage ./kanban-tui.nix { };
  textual-jumper = pkgs.callPackage ./textual-jumper { };
  # kjv = pkgs.callPackage ./verse.nix { };
  # audiowaveform = pkgs.callPackage ./audiowaveform.nix { };
}
