{ pkgs, ... }: {
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.nyverin = {
      isNormalUser = true;
      description = "nyverin";
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" ];
      packages = with pkgs; [];
    };
  };

  # Enable automatic login for the user.
  services.getty.autologinUser = "nyverin";
}
