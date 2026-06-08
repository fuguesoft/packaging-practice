{
  pkgs ? import <nixpkgs> { },
  ...
}:
{
  kabmat = pkgs.callPackage ./kabmat.nix { };
}
