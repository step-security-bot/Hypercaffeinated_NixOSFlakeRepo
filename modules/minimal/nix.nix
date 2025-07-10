{ config, lib, pkgs, ... }:

{
  
    nix = {
      settings = {
        trusted-substituters = [ 
          "https://install.determinate.systems"
        ];
        trusted-public-keys = [ 
          "cache.flakehub.com-3:hJuILl5sVK4iKm86JzgdXW12Y2Hwd5G07qKtHTOcDCM="
        ];
        extra-trusted-substituters = [
          "https://chaotic-nyx.cachix.org/"
          "https://nix-community.cachix.org"
        ];
        extra-trusted-public-keys = [
          "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8="
          "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];
        experimental-features = "nix-command flakes";
        lazy-trees = true;
      };
    };
  
}
