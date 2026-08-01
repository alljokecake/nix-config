{
  flake.modules.darwin.systemPreferences = {
    system.defaults = {
      dock = {
        autohide = true;
        orientation = "right";
        tilesize = 60;
        largesize = 65;
      };
    };
  };
}
