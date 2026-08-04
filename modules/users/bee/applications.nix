{ config, ... }:
let
  hm = config.flake.modules.homeManager;
in
{
  flake.modules.homeManager."bee.applications" = {
    imports = [
      hm."bee.profile"
      # hm.git
    ];
  };
}
