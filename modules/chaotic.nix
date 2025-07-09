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
  };
  
  environment.systemPackages = [ 
    pkgs.nyx-generic-git-update
  ];
  
}
