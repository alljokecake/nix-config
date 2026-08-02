{
  flake.modules.homeManager.fish =
    { pkgs, ... }:
    {
      programs.fish = {
        enable = true;

        plugins = [
        { name = "z"; src = pkgs.fishPlugins.z.src; }
        { name = "hydro"; src = pkgs.fishPlugins.hydro.src; }
        ];

        shellAliases = {
          j = "z";
        };

        interactiveShellInit = ''
          set fish_greeting
          fish_vi_key_bindings

          bind -M insert -m default \cf backward-char force-repaint

          set fish_cursor_default block
          set fish_cursor_insert block
          set fish_cursor_replace_one block
          set fish_cursor_visual block


          set --export BUN_INSTALL "$HOME/.bun"
          fish_add_path $BUN_INSTALL/bin

          if status is-interactive
          and not set -q TMUX
            tmux new-session -A -s genesis
          end


          function fish_mode_prompt
              # disable vi mode indicators
          end

          # hydro prompt configuration
          set --global hydro_symbol_start ""
          set --global hydro_symbol_prompt ""
          set --global hydro_symbol_git_dirty "+"
          set --global hydro_symbol_git_ahead "↑"
          set --global hydro_symbol_git_behind "↓"

          set --global hydro_color_pwd magenta
          set --global hydro_color_git cyan
          set --global hydro_color_prompt white

          set fish_color_command blue
          set fish_color_param cyan

          direnv hook fish | source
          jj util completion fish | source

        '';
      };
    };
}
