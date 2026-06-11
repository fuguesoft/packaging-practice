{
  pkgs ? import <nixpkgs> { },
}:
{
  kabmat = pkgs.callPackage ./pkg_kabmat.nix { };
  kanban-tui = pkgs.python3Packages.callPackage ./pkg_kanban-tui.nix { };
  textual-jumper = pkgs.python3Packages.callPackage ./pkg_textual-jumper.nix { };

  # kjv = pkgs.callPackage ./pkg_verse.nix { };
  # audiowaveform = pkgs.callPackage ./pkg_audiowaveform.nix { };
  flow = pkgs.callPackage ./pkg_flow.nix { };
}
