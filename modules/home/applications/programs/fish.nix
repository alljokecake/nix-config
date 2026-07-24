# TODO: Add https://github.com/rupa/z

{
  flake.modules.homeManager.fish =
    { pkgs, ... }:
    {
      programs.fish = {
        enable = true;

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

          set --export FZF_DEFAULT_OPTS "
            --layout=reverse
            --border
          "

          if status is-interactive
          and not set -q TMUX
            tmux new-session -A -s genesis
          end

          direnv hook fish | source

          for file in ~/.config/fish/themes/custom/init.fish
            source $file
          end

        '';
      };
    };
}
