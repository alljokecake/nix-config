{
  flake.modules.homeManager.neovim = { config, lib, ... }: {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
      vimAlias = true;
    };

    # Trying to configure neovim through hm while keeping the lua style config made
    # a ton of mess, I don't think it's a viable option
    xdg.configFile."nvim/init.lua".enable = lib.mkForce false;
    xdg.configFile."nvim".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nvim";

  };
}
