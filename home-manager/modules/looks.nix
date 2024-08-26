{inputs, pkgs, ...}: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "Adwaita-dark";
      package = pkgs.adwaita-icon-theme;
    };
    catppuccin.gnomeShellTheme = true;
    catppuccin.icon.accent = "blue";
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "blue";
      size = "standard";
      tweaks = [ "normal" ];
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "kvantum";
    style.name = "kvantum";
  };

  catppuccin.pointerCursor.enable = true;
  catppuccin.pointerCursor.accent = "blue";
  home = {
    pointerCursor = {
      size = 32;
      gtk.enable = true;
      x11 = {
        enable = true;
        defaultCursor = true;
      };
    };
  };
}