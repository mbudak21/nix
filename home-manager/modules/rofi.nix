{ pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland-unwrapped;
    catppuccin.enable = true;
    font = "JetBrains Mono 16";
  };
}
