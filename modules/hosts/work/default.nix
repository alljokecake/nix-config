{ config, ... }:
let
  inherit (config.flake.modules) darwin;
  hm = config.flake.modules.homeManager;
  meta = import ./_meta.nix;
in
{
  configurations.darwin.${meta.networking.hostName}.module = {
    imports = [
      darwin.base
      ./_meta.nix
    ];

    home-manager.sharedModules = [
      hm."${meta.primaryUser}.applications"
    ];

    system.stateVersion = 6;
  };
}
