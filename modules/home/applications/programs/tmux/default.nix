{
  flake.modules.homeManager.tmux = {
    programs = {
      tmux = {
        enable = true;

        extraConfig = builtins.readFile ./.tmux.conf;
      };
    };
  };
}
