{
  pkgs ? import <nixpkgs> { },
}:
rec {
  kabmat = pkgs.callPackage ./pkg_kabmat.nix { };
  kanban-tui = pkgs.python3Packages.callPackage ./pkg_kanban-tui.nix {
    inherit
      textual-jumper
      ;
  };
  textual-jumper = pkgs.python3Packages.callPackage ./pkg_textual-jumper.nix { };

  curl-quests = pkgs.callPackage ./pkg_curl-quests.nix { };
  # kjv = pkgs.callPackage ./pkg_verse.nix { };
  # audiowaveform = pkgs.callPackage ./pkg_audiowaveform.nix { };
  flow = pkgs.callPackage ./pkg_flow.nix { };
  crossterm = pkgs.callPackage ./pkg_flow_crossterm.nix { };
}
