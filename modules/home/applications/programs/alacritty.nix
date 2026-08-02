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
          colors = {
            primary = {
              background = "#242424";
              foreground = "#e3dede";
            };

            cursor = {
              text = "#242424";
              cursor = "#f2a766";
            };

            selection = {
              text = "CellForeground";
              background = "#c678dd";
            };

            normal = {
              black = "#242424";
              red = "#e05f5f";
              green = "#8daf67";
              yellow = "#e6b450";
              blue = "#81A2C7";
              magenta = "#cdabcf";
              cyan = "#f0f0bb";
              white = "#e3dede";
            };

            bright = {
              black = "#505050";
              red = "#ff7b7b";
              green = "#a8cf7a";
              yellow = "#ffc900";
              blue = "#9cc5e8";
              magenta = "#e4b8e8";
              cyan = "#9ccbe8";
              white = "#ffffff";
            };

          };

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

            bindings = [
              {
                mouse = "WheelUp";
                mods = "Control";
                action = "IncreaseFontSize";
              }
              {
                mouse = "WheelDown";
                mods = "Control";
                action = "DecreaseFontSize";
              }
            ];
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

          terminal = {
            shell.program = "${pkgs.fish}/bin/fish";
          };
        };
      };
    };
}
