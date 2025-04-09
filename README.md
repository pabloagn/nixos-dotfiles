# nixos-dotconfig

[NixOS Flake](https://wiki.nixos.org/wiki/Flakes) for my NixOS System deployed in a MacBook Pro Retina Display Late 2015.

# Content

In this repository, you will find:
- Flake configuration.
- Home Manager Configuration.
- System Configuration.
- System & home Modules.
- An installer for deploying a working system with the use of one bash command.

# Installation

# Build New Generations & Switch

The environment is managed throughout Nix Flakes.

For system configuration:

```bash
sudo nixos-rebuild switch --flake .dotfiles
```

For home manager:

```bash
home-manager switch --flake .dotfiles
```

# Upgrades & System Updates

To update packages, follow the instructions below:

## 1. Update URLs

This command checks the URLs defined in the `flake.nix` (like `nixpkgs/nixos-24.05`, `nixpkgs/nixos-unstable`, `home-manager/release-24.05`) for newer commits and updates the `flake.lock` file accordingly. The flake.lock pins specific versions (commits) of your inputs, ensuring reproducibility.

```bash
nix flake update
```

## 2. Apply Update

```bash
sudo nixos-rebuild switch --flake .dotfiles
```

For home manager:

```bash
home-manager switch --flake .dotfiles
```


# Attribution
- Pablo Aguirre

# References
- [NixOS Packages, NixOS.org](https://search.nixos.org/packages)
- [home-manager, My NixOS](https://mynixos.com/search?q=home-manager)
- [NixOS Home Manager Manual, Nix Community](https://nix-community.github.io/home-manager/)
- [librephoenix/nixos-config](https://github.com/librephoenix/nixos-config)
- [Installing DOOM Emacs on NixOS, Doom Emacs Discourse](https://discourse.doomemacs.org/t/installing-doom-emacs-on-nixos/4600)
