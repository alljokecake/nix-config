{ config, ... }:
let
  hm = config.flake.modules.homeManager;
in
{
  # FIXME: There should be a better way of declaring this
  flake.modules.homeManager."ilhan.applications" = {
    imports = [
      hm."ilhan.profile"
      hm.packages

      # hm.git

      hm.fish
      hm.neovim
      hm.tmux

      hm.alacritty
    ];
  };
}
