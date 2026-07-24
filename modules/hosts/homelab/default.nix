{ config, ... }:
let
  inherit (config.flake.modules) nixos;
  hm = config.flake.modules.homeManager;
  meta = import ./_meta.nix;
in
{
  # NOTE: add hardware config: sudo nixos-generate-config --show-hardware-config > modules/hosts/homelab/_hardware.nix
  configurations.nixos.${meta.networking.hostName}.module = {
    imports = [
      nixos.base
      ./_meta.nix
    ];

    home-manager.sharedModules = [
      hm."${meta.primaryUser}.applications"
    ];

    i18n.defaultLocale = "en_US.UTF-8";
    system.stateVersion = "26.05";
  };
}
