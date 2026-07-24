{
  flake.modules.homeManager.git = {
    programs = {
      git = {
        enable = true;
        settings = {
          pull.rebase = true;
        };
      };
    };
  };
}
