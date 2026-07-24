{
  flake.modules.nixos.users =
    { config, lib, pkgs, ... }:
    {
      options.primaryUser = lib.mkOption {
        type = lib.types.str;
        description = "Primary username for this system";
      };

      config = {
        users.users.${config.primaryUser} = {
          extraGroups = [
            "networkmanager"
            "video"
            "wheel"
          ];
          isNormalUser = true;
        };

        security.sudo.wheelNeedsPassword = false;

        home-manager.users.${config.primaryUser}.home.stateVersion = "26.05";
      };
    };
}
