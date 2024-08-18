# Sync: Check hardware configuration, ensure correct directory, then rebuild and switch Home Manager
sync: ensure-nix-dir

# Ensure the directory containing the Justfile is $HOME/nix, if not, move it there and re-run the Justfile
ensure-nix-dir:
    @justfile_dir=$(cd $(dirname $0) && pwd) && \
    if [ "$justfile_dir" != "$HOME/nix" ]; then \
        echo "Moving directory to $HOME/nix"; \
        mv "$justfile_dir" "$HOME/nix"; \
        cd "$HOME/nix"; \
        echo "Re-running the Justfile from $HOME/nix"; \
        exec just sync; \
    else \
        echo "Directory is already at $HOME/nix"; \
        just check-hardware-config rebuild home-manager; \
    fi

# Check if the hardware configuration is the same, if not, copy it
check-hardware-config:
    @if ! diff -q /etc/nixos/hardware-configuration.nix $HOME/nix/nixos/hardware-configuration.nix >/dev/null 2>&1; then \
        just copy-hardware-config; \
    else \
        echo "Hardware configuration is already up to date"; \
    fi

# Copy the hardware configuration
copy-hardware-config:
    @cp /etc/nixos/hardware-configuration.nix $HOME/nix/nixos/hardware-configuration.nix

# Rebuild NixOS with the flake
rebuild:
    @sudo nixos-rebuild switch --flake $HOME/nix

# Switch Home Manager configuration with the flake
home-manager:
    @home-manager switch --flake $HOME/nix

# Update the flake
update:
    @nix flake update $HOME/nix

# Upgrade NixOS with the flake
upgrade:
    @sudo nixos-rebuild switch --upgrade --flake $HOME/nix
