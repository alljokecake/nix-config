{ config, ... }:
let
  inherit (config.flake.modules) nixos darwin;
  hm = config.flake.modules.homeManager;
in
{
  flake.modules.generic.hmIntegration = {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      # backupFileExtension = "bak";
    };
  };

  flake.modules.nixos.base = {
    imports = [
      nixos.containers
      nixos.users
    ];
    nixpkgs.config.allowUnfree = false;
    home-manager.sharedModules = [ hm.base ];
  };

  flake.modules.darwin.base = {
    imports = [
      darwin.determinate
      darwin.keyboard
      darwin.systemPreferences
      darwin.users
    ];
    nixpkgs.config.allowUnfree = true;
    home-manager.sharedModules = [ hm.base ];
  };

  flake.modules.homeManager.base = { }; # TODO: let home-manager manage itself
}
