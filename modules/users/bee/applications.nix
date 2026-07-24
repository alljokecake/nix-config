{ config, ... }:
let
  hm = config.flake.modules.homeManager;
in
{
  flake.modules.homeManager."bee.applications" = {
    imports = [
      # TODO: Setup BusyBox?
      hm."bee.profile"
      # hm.git
    ];
  };
}
