{ pkgs }:
{
  # Nix
  nixfmt.enable = true;
  statix.enable = true;
  deadnix.enable = true;
  biome = {
    enable = true;
    extraPackages = [ pkgs.nodejs ];
    settings = {
      binPath = "./node_modules/@biomejs/biome/bin/biome";
      configPath = "./biome.json";
      write = false;
    };
  };
}
