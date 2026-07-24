{
  flake.modules.homeManager.alacritty =
    {
      pkgs,
      ...
    }:
    {
      programs.alacritty = {
        enable = true;

        settings = {
          cursor = {
            style = {
              shape = "Block";
              blinking = "Always";
            };
            blink_timeout = 0;
          };

          font = {
            size = 18;

            normal = {
              family = "Hasklug Nerd Font Propo";
              style = "Regular";
            };
          };

          mouse = {
            hide_when_typing = true;
          };

          window = {
            decorations = "Buttonless";

            padding = {
              x = 15;
              y = 15;
            };

            dimensions = {
              columns = 135;
              lines = 50;
            };

            decorations_theme_variant = "Dark";
          };

          # FIXME
          general = {
            import = [
              "~/.config/alacritty/dorf.toml"
            ];
          };

          terminal = {
            shell.program = "${pkgs.fish}/bin/fish";
          };
        };
      };
    };
}
