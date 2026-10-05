{
  description = "Flake for the CodeBrew Project";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    utils.url = "github:gytis-ivaskevicius/flake-utils-plus";
    git-hooks.url = "github:cachix/git-hooks.nix";
  };
  outputs =
    inputs@{
      self,
      utils,
      ...
    }:
    utils.lib.mkFlake {
      inherit self inputs;
      supportedSystems = [
        "x86_64-linux"
      ];

      outputsBuilder =
        channels:
        let
          pkgs = channels.nixpkgs;
        in
        {
          devShells.default = import ./nix/devShells { inherit pkgs inputs; };
        };
    };
}
