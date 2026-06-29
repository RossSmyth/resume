{
  system ? builtins.currentSystem or "x86_64-linux",
}:
let
  pins = import ./npins { };

  lib = pkgs.lib;

  pkgs = import pins.nixpkgs {
    inherit system;
    overlays = [
      (import pins.press)
    ];
  };

  fs = lib.fileset;

  files = fs.unions [
    ./smyth_resume.typ
  ];
in
pkgs.buildTypstDocument {
  pname = "resume";
  version = "none";

  src = fs.toSource {
    root = ./.;
    fileset = files;
  };

  file = "smyth_resume.typ";
  fonts = [ pkgs.liberation_ttf ];
}
