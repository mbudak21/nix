{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {

      font = {
        size = 13.0;
        # draw_bold_text_with_bright_colors = true;
        normal = {
          family = "JetBrains Mono";
          style = "Bold";
        };
      };

    };
  };

  programs.bat = {
    enable = true;
  };

  programs.fish = {
    enable = true;
  };

  programs.fuzzel = {
    enable = true;
  };

  services.mako = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.git = {
    enable = true;
    userName  = "nyverin";
    userEmail = "nyverin@gmail.com";
  };

  programs.htop = {
    enable = true;
    settings = {
      tree_view = 1;
    };
  };

  programs.helix = {
    enable = true;
  };

  programs.tmux = {
    enable = true;
  };

  programs.zellij = {
    enable = true;
  };

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland-unwrapped;
    catppuccin.enable = true;
    font = "JetBrains Mono 16";
  };

  programs.git.delta = {
    enable = true;
  };

  programs.mpv = {
    enable = true;
  };
  
}
