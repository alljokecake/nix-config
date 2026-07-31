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
        source = ./nvim;
        recursive = true;
      };
    };
  };
}
