{ config, lib, pkgs, ... }:

{

  environment = {
    sessionVariables = {
      COSMIC_DATA_CONTROL_ENABLED = 1;
    };
    variables = {
      #XCURSOR_SIZE=24;
      #XCURSOR_THEME="openzone-cursors";
    };
    systemPackages = [
        
        #pkgs.papirus-maia-icon-theme
        #pkgs.papirus-folders
        #pkgs.openzone-cursors
        #pkgs.libdecor
        #pkgs.waycheck
        #pkgs.nwg-look
        #pkgs.libinput
        #pkgs.gtk4-layer-shell
        #pkgs.scenefx

        #pkgs.cosmic-bg
        #pkgs.cosmic-osd
        #pkgs.cosmic-term
        #pkgs.cosmic-idle
        #pkgs.cosmic-edit
        #pkgs.cosmic-comp
        #pkgs.cosmic-store
        #pkgs.cosmic-randr
        #pkgs.cosmic-panel
        #pkgs.cosmic-icons
        #pkgs.cosmic-files
        #pkgs.cosmic-player
        #pkgs.cosmic-session
        #pkgs.cosmic-greeter
        #pkgs.cosmic-ext-ctl
        #pkgs.cosmic-applets
        #pkgs.cosmic-settings
        #pkgs.cosmic-launcher
        #pkgs.cosmic-protocols
        #pkgs.cosmic-wallpapers
        #pkgs.cosmic-screenshot
        #pkgs.cosmic-ext-tweaks
        #pkgs.cosmic-applibrary
        #pkgs.cosmic-design-demo
        #pkgs.cosmic-notifications
        #pkgs.cosmic-ext-calculator
        #pkgs.cosmic-settings-daemon
        #pkgs.cosmic-workspaces-epoch
        
        #pkgs.quick-webapps
        #pkgs.examine
        #pkgs.xdg-desktop-portal-cosmic
        #pkgs.tasks
        #pkgs.oboete
        #pkgs.libcosmicAppHook
        #pkgs.forecast

        pkgs.just
        pkgs.gnumake
        #pkgs.rustc
        #pkgs.waylandpp
        #pkgs.wlr-protocols
        #pkgs.frog-protocols
        #pkgs.libGL
        #pkgs.egl-wayland
        #pkgs.eglexternalplatform
        #pkgs.vtk_9_egl
        #pkgs.freeglut
        #pkgs.gegl
        #pkgs.mesa
        #pkgs.driversi686Linux.mesa
        #pkgs.mesa-demos
        #pkgs.driversi686Linux.mesa-demos
        #pkgs.mesa-gl-headers
        #pkgs.libgbm
        #pkgs.libdrm
        #pkgs.seatd
        #pkgs.libxkbcommon
        #pkgs.libinput
        #pkgs.eudev
        #pkgs.dbus
        
        #pkgs.systemd
        #pkgs.systemdLibs
        #pkgs.systemdUkify
        #pkgs.libpulseaudio
        #pkgs.pop-launcher
        #pkgs.expat
        #pkgs.fontconfig
        #pkgs.freetype
        #pkgs.lld
        #pkgs.cargo
        #pkgs.libgbm
        #pkgs.libclang
        #pkgs.pipewire

        #pkgs.system76-power
        #pkgs.system76-firmware
        #pkgs.system76-scheduler
        #pkgs.system76-wallpapers
        #pkgs.pop-gtk-theme
        #pkgs.pop-hp-wallpapers
    ];
  };
  
}
