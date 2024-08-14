# ❄️ My NixOS Config

```bash
git clone https://github.com/ealtun21/nix
mv nix $HOME/nix # Config is supposed to be in the ~/nix directory
cd $HOME/nix
cp /etc/nixos/hardware-configuration.nix $HOME/nix/nixos/hardware-configuration.nix
sudo nixos-rebuild switch --flake .
home-manager switch --flake .
```
Enjoy!

![Screenshot](./screenshot.png)
