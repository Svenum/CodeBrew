{ pkgs, inputs }:
let
  pre-commit-check = inputs.git-hooks.lib.${pkgs.system}.run {
    src = ../../.;
    hooks = import ./hooks.nix { inherit pkgs; };
  };
  inherit (pre-commit-check) enabledPackages shellHook;
in
pkgs.mkShell {
  shellHook = ''
    ${shellHook}
    bun i

    export OSFONTDIR=${pkgs.nerd-fonts.liberation}/share/fonts
    luaotfload-tool -u

    # Just start zsh if it's an interactive shell
    if [[ $- == *i* ]]; then
      exec zsh
    fi
  '';
  buildInputs =
    with pkgs;
    [
      zsh
      bun
      nodejs
      (texlive.withPackages (
        texPkgs: with texPkgs; [
          scheme-medium
          citation-style-language
          luatex
          minted
          upquote
          makecell
        ]
      ))
    ]
    ++ enabledPackages;
}
