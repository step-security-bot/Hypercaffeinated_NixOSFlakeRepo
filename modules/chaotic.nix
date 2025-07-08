{ config, lib, pkgs, ... }:

{

  chaotic = {
    nyx = {
      cache = {
        enable = true;
      };
      nixPath = {
        enable = true;
      };
      overlay = {
        enable = true;
      };
      registry = {
        enable = true;
      };
    };
    appmenu-gtk3-module = {
      enable = true;
    };
  };
  
}
