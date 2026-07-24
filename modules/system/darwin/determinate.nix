{ inputs, ... }:
{
  flake.modules.darwin.determinate =
    { ... }:
    {
      imports = [ inputs.determinate.darwinModules.default ];

      determinateNix = {
        enable = true;

        customSettings = {
          eval-cores = 0;

          extra-experimental-features = [
            "build-time-fetch-tree"
          ];
        };
      };

      nix.enable = false;
    };
}
