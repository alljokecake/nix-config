{
  flake.modules.darwin.systemPreferences = {
    system.defaults = {
      dock = {
        autohide = true;
        orientation = "right";
        tilesize = 55;
        largesize = 60;
      };
    };
  };
}
