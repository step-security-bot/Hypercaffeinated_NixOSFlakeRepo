{ config, lib, pkgs, ... }:

{

  services = {
    xserver = {
      enable = true;
      displayManager = {
        startx = {
          enable = true;
        };
      };
      xkb = {
        layout = "de";
      };
    };
    swapspace = {
      enable = true;
    };
    kmscon = {
      enable = true;
      hwRender = true;
      useXkbConfig = true;
      fonts = [ 
        { 
          name = "Source Code Pro"; 
          package = pkgs.source-code-pro; 
        } 
      ];
    };
  };

}
