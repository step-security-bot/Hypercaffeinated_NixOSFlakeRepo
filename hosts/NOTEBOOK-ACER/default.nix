{ config, lib, pkgs, ... }:

{

  imports = [
    ./boot.nix
    ./environment.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./programs.nix
    ./services.nix
  ];

}
