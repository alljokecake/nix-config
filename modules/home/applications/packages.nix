# TODO: Individual packages per user
{
  flake.modules.homeManager.packages =
    {
      lib,
      pkgs,
      ...
    }:
    {
      home.packages =
        with pkgs;
        [
          ripgrep
          jq
          curlMinimal
          tree
        ];
        # TODO: Setup raycast
        # ++ lib.optionals pkgs.stdenv.hostPlatform.isDarwin [
        #   raycast
        # ];
    };
}
