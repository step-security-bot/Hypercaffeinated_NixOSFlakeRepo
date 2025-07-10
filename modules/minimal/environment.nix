{ config, lib, pkgs, ... }:

{

  environment = {
    sessionVariables = {
      NIXPKGS_ALLOW_UNFREE=1;
    };
  };
  
}
