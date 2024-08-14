{

  imports = [
    ./fish.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "nyverin";
    homeDirectory = "/home/nyverin";
    stateVersion = "23.11";
  };

  catppuccin.enable = true;
}
