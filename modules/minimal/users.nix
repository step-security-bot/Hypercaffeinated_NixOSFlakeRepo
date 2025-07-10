{ config, lib, pkgs, ... }:

{

   users = {
     users = {
       joshua = {
         isNormalUser = true;
         extraGroups = [ "wheel" "networkmanager" ];
         packages = [];
       };
     };
   };

}
