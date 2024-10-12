{ pkgs, inputs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      "python-2.7.18.8"
      "electron-25.9.0"
    ];
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    audacity
    firefox
    telegram-desktop
    obs-studio
    kdenlive
    gparted
    zoom-us
    polymc
    helix
    mosh
    quickemu
    obsidian
    wireshark

    # Coding stuff
    gnumake
    just
    gcc
    python
    (python3.withPackages (ps: with ps; [ requests ]))
    jetbrains.idea-community-bin
    go
    gopls
    nil

    # CLI utils
    neofetch
    file
    tree
    wget
    git
    fastfetch
    htop
    nix-index
    unzip
    scrot
    ffmpeg
    light
    lux
    mediainfo
    ranger
    zram-generator
    cava
    zip
    ntfs3g
    yt-dlp
    brightnessctl
    swww
    openssl
    lazygit
    bluez
    bluez-tools
    tlrc
    gh
    btop
    nextdns
    dnsproxy
    duf

    # GUI utils
    feh
    imv
    dmenu
    screenkey
    gromit-mpx

    # Xorg stuff
    #xterm
    #xclip
    #xorg.xbacklight

    # Wayland stuff
    xwayland
    wl-clipboard
    cliphist

    # WMs and stuff
    herbstluftwm
    hyprland
    seatd
    xdg-desktop-portal-hyprland
    xdg-desktop-portal-gtk

    # Sound
    pipewire
    pulseaudio
    pamixer

    # GPU stuff
    amdvlk
    rocm-opencl-icd
    glaxnimate

    # Screenshotting
    grim
    grimblast
    slurp
    flameshot
    swappy

    # Other
    home-manager
    spice-vdagent
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5ct
    qt5ct
    libsForQt5.breeze-icons
    numix-icon-theme-circle
    catppuccin-papirus-folders
    colloid-icon-theme
    catppuccin-gtk
    catppuccin-kde
    catppuccin-qt5ct
    pkgs.vesktop
    vscode
    webcord-vencord
    qpwgraph # For screenshare fix
    chromedriver
    openconnect
    teams-for-linux
    pavucontrol
    easyeffects
    gvfs
    xorg.xauth
    remmina
    wireguard-tools

    lm_sensors
    bc

    inputs.kuvpn.packages.${pkgs.system}.default

    #(callPackage ./cursorsh.nix {})
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];

}
