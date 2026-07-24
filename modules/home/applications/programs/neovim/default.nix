{
  flake.modules.homeManager.neovim =
  {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };

    xdg.configFile = {
      "nvim" = {
        # TODO: nvim as a git submodule
        source = ./nvim;
        recursive = true;
      };
    };
  };
}
