{ config, lib, pkgs, modulesPath, ... }:

{
  
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot = {
    initrd = {
      availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "uas" "sd_mod" "sdhci_pci" "rtsx_usb_sdmmc" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXROOT";
      fsType = "btrfs";
    };
    "/boot" = {
      device = "dev/disk/by-label/NIXBOOT";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
  };

  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 32*1024;
  } ];

  networking = {
    useDHCP = lib.mkDefault true;
  };  
  
  nixpkgs = {
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  
  hardware = {
    cpu = {
      intel = {
        updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
      };
    };
  };

}
