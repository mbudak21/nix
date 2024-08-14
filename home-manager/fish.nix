{ config, pkgs, ... }: {
  programs.fish = {
    enable = true;
    plugins = [
      # Enable a plugin (here grc for colorized command output) from nixpkgs
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      # Manually packaging and enable a plugin
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "e0e1b9dfdba362f8ab1ae8c1afc7ccf62b89f7eb";
          sha256 = "0dbnir6jbwjpjalz14snzd3cgdysgcs3raznsijd6savad3qhijc";
        };
      }
    ];
    
    interactiveShellInit = ''
      set fish_greeting # Disable greeting

      # Set up aliases
      set flakeDir ~/nix
      alias rb "sudo nixos-rebuild switch --flake $flakeDir"
      alias upd "nix flake update $flakeDir"
      alias upg "sudo nixos-rebuild switch --upgrade --flake $flakeDir"
      alias hms "home-manager switch --flake $flakeDir"
      alias kuvpn "/home/nyverin/.cargo/bin/kuvpn"
      alias fan_boost "sudo /home/nyverin/.cargo/bin/fan_boost"
      alias conf "hx $flakeDir/nixos/configuration.nix"
      alias pkgs "hx $flakeDir/nixos/packages.nix"
      alias ll "ls -l"
      alias v "hx"
      alias se "sudoedit"
      alias ff "fastfetch"

      function fish_command_not_found --on-event fish_command_not_found
        echo "$argv: command not found"
      end
    '';

  };
}
