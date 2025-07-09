{ config, lib, pkgs, ... }:

{

  imports = [
    ./boot.nix
    ./chaotic.nix
    ./environment.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./programs.nix
    ./services.nix
  ];

}
