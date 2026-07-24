{
  flake.modules.homeManager."bee.profile" = {
    programs.git.settings.user = {
      email = ""; # TODO: Setup agenix
      name = "alljokecake";
    };
  };
}
