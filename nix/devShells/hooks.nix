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
      configPath = "./biome.json";
      write = true;
    };
  };
  gen-pdf = {
    enable = true;
    name = "gen-pdf";
    entry = "latexmk -cd -lualatex -shell-escape -interaction=nonstopmode";
    language = "system";
    extraPackages = [
      pkgs.biber
      (pkgs.texlive.withPackages (
        texPkgs: with texPkgs; [
          scheme-medium
          luatex
          minted
          upquote
          makecell
          xltabular
          booktabs
          ltablex
          biblatex
          biblatex-ieee
          xurl
          csquotes
          pdflscape
        ]
      ))
    ];
    pass_filenames = true;
    files = "\\.tex$";
  };
}
