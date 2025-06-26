{
  inputs = {
    nixpkgs.url = "https://nixos.org/channels/nixos-unstable/nixexprs.tar.xz";
    press = {
      url = "github:RossSmyth/press";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    press
  }: let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          (import press)
        ];
      };
    in {
      packages.${system}.default = pkgs.buildTypstDocument {
        name = "resume";
        src = ./.;
        file = "smyth_resume.typ";
        fonts = [ pkgs.liberation_ttf ];
      };
    };
}
