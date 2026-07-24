{ inputs, ... }:
{
  perSystem =
    { pkgs, ... }:

    {
      devShells.default = pkgs.mkShellNoCC {

        packages = with pkgs; [
          nixd
          nixfmt

          (writeShellApplication {
            name = "nixup";

            runtimeInputs = [
              inputs.nix-darwin.packages.${pkgs.stdenv.hostPlatform.system}.darwin-rebuild
            ];

            # FIXME
            text = ''
              sudo darwin-rebuild switch --flake ".#dakota"
              echo "Successful"
            '';
          })

        ];
      };
    };
}
