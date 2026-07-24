{
  flake.modules.darwin.users =
    { config, lib, pkgs, ... }:
    {
      options.primaryUser = lib.mkOption {
        type = lib.types.str;
        description = "Primary username for this system";
      };

      config = {
        programs.fish.enable = true; # FIXME

        users.knownUsers = [ config.primaryUser ];


        users.users.${config.primaryUser} = {
          uid = 501; # Add comment
          home = "/Users/${config.primaryUser}";
          shell = pkgs.fish; # FIXME: hardcoded fish for know
        };

        system.primaryUser = config.primaryUser;

        home-manager.users.${config.primaryUser}.home.stateVersion = "26.05";
      };
    };
}
