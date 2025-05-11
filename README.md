# NixOS Dotfiles

[NixOS Flake](https://wiki.nixos.org/wiki/Flakes) for my NixOS Systems.

## Content

- [`flake.nix`](flake.nix): The heart of the configuration, defining system outputs and inputs.
- [`flake.lock`](flake.lock): Pins specific versions of dependencies for reproducible builds.
- [`dotfiles.code-workspace`](dotfiles.code-workspace): VSCode workspace for managing dotfiles.
- [`archive/`](archive/): Archived or experimental configurations.
- [`common/`](common/): Contains configurations shared across all NixOS hosts.
- [`hosts/`](hosts/): Contains host-specific configurations.
- [`scripts/`](scripts/): Utility scripts for managing dotfiles or system tasks.
- [`templates/`](templates/): Templates for new Nix modules.

## Installation

```bash
git clone https://github.com/pabloagn/nixos-dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

## Attribution

- Pablo Aguirre

## References

- [NixOS Packages, NixOS.org](https://search.nixos.org/packages)
- [home-manager, My NixOS](https://mynixos.com/search?q=home-manager)
- [NixOS Home Manager Manual, Nix Community](https://nix-community.github.io/home-manager/)
- [librephoenix/nixos-config](https://github.com/librephoenix/nixos-config)
- [Installing DOOM Emacs on NixOS, Doom Emacs Discourse](https://discourse.doomemacs.org/t/installing-doom-emacs-on-nixos/4600)
