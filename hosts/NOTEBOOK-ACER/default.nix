{ config, lib, pkgs, ... }:

{

  imports = [
    ./boot.nix
    ./environment.nix
    ./hardware-configuration.nix
    ./networking.nix
    ./services.nix
  ];

}
