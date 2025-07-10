{ config, lib, pkgs, ... }:

{

  imports = [
    ./boot.nix
    ./chaotic.nix
    ./console.nix
    ./environment.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs.nix
    ./services.nix
    ./system.nix
    ./systemd.nix
    ./time.nix
    ./users.nix
    ./zramSwap.nix
  ];

}
