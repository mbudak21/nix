# Justfile

# Variables
repo := "https://github.com/ealtun21/nix"

# Sync: Check hardware configuration, clone if needed, then rebuild and switch Home Manager
sync: check-hardware-config clone rebuild home-manager

# Clone the Nix repository directly into the $HOME/nix directory if it doesn't exist
clone:
    if [ ! -d "$HOME/nix/.git" ]; then \
        git clone {{repo}} $HOME/nix; \
    else \
        echo "Repository already cloned in $HOME/nix"; \
    fi

# Check if the hardware configuration is the same, if not, copy it
check-hardware-config:
    if ! diff -q /etc/nixos/hardware-configuration.nix $HOME/nix/nixos/hardware-configuration.nix >/dev/null 2>&1; then \
        just copy-hardware-config; \
    else \
        echo "Hardware configuration is already up to date"; \
    fi

# Copy the hardware configuration
copy-hardware-config:
    cp /etc/nixos/hardware-configuration.nix $HOME/nix/nixos/hardware-configuration.nix

# Rebuild NixOS with the flake
rebuild:
    sudo nixos-rebuild switch --flake $HOME/nix

# Switch Home Manager configuration with the flake
home-manager:
    home-manager switch --flake $HOME/nix

# Update the flake
update:
    nix flake update $HOME/nix

# Upgrade NixOS with the flake
upgrade:
    sudo nixos-rebuild switch --upgrade --flake $HOME/nix

