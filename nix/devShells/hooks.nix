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
      (pkgs.texlive.withPackages (
        texPkgs: with texPkgs; [
          scheme-medium
          citation-style-language
          luatex
          minted
          upquote
          makecell
          xltabular
          booktabs
          ltablex
        ]
      ))
    ];
    pass_filenames = true;
    files = "\\.tex$";
  };
}
