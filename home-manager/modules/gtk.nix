{inputs, ...}: {
  gtk = {
    enable = true;
    iconTheme.name = "Papirus";
    catppuccin = {
      enable = true;
      flavor = "mocha";
      accent = "pink";
      size = "standard";
      tweaks = [ "normal" ];
    };
  };
}