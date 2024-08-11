{ pkgs, ... }: {
  catppuccin.pointerCursor.enable = true;
  home = {
    pointerCursor = {
      size = 24;
      gtk.enable = true;
      x11 = {
        enable = true;
        defaultCursor = true;
      };
    };
  };
}
