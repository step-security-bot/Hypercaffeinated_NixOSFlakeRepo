{ config, lib, pkgs, ... }:

{

  jovian = {
    steam = {
      enable = true;
      #autoStart = true;
    };
    devices = {
      steamdeck = {
        enable = true;
      };
    };
  };

  environment = {
    systemPackages = [ 
      pkgs.jovian-chaotic.decky-loader
      pkgs.jovian-chaotic.decky-loader-prerelease
      pkgs.jovian-chaotic.galileo-mura
      pkgs.jovian-chaotic.gamescope
      pkgs.jovian-chaotic.gamescope-session
      pkgs.jovian-chaotic.gamescope-wsi
      pkgs.jovian-chaotic.inputplumber
      pkgs.jovian-chaotic.jovian-greeter
      pkgs.jovian-chaotic.jovian-hardware-survey
      pkgs.jovian-chaotic.jovian-steam-protocol-handler
      pkgs.jovian-chaotic.jovian-stubs
      pkgs.jovian-chaotic.jovian-updater-logo-helper
      pkgs.jovian-chaotic.jupiter-dock-updater-bin
      pkgs.jovian-chaotic.jupiter-fan-control
      pkgs.jovian-chaotic.jupiter-hw-support
      pkgs.jovian-chaotic.linux-firmware-jupiter
      pkgs.jovian-chaotic.linux_jovian
      pkgs.jovian-chaotic.mangohud
      pkgs.jovian-chaotic.mesa-radeonsi-jupiter
      pkgs.jovian-chaotic.mesa-radv-jupiter
      pkgs.jovian-chaotic.opensd
      pkgs.jovian-chaotic.powerbuttond
      pkgs.jovian-chaotic.sdgyrodsu
      pkgs.jovian-chaotic.steam
      pkgs.jovian-chaotic.steam-unwrapped
      pkgs.jovian-chaotic.steam_notif_daemon
      pkgs.jovian-chaotic.steamdeck-bios-fwupd
      pkgs.jovian-chaotic.steamdeck-dsp
      pkgs.jovian-chaotic.steamdeck-firmware
      pkgs.jovian-chaotic.steamdeck-hw-theme
      pkgs.jovian-chaotic.steamos-manager
      pkgs.jovian-chaotic.steamos-polkit-helpers
      pkgs.jovian-chaotic.wakehook
      pkgs.jovian-chaotic.wireplumber-jupiter
      pkgs.jovian-chaotic.xdg-desktop-portal-gamescope
      pkgs.jovian-chaotic.xdg-desktop-portal-holo
    ];
  };
  
}
