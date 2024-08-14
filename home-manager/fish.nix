{ config, pkgs, ... }: {
  programs.fish = {
    enable = true;
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
    '';

  };
}
