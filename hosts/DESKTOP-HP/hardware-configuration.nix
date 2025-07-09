{ config, lib, pkgs, modulesPath, ... }:

{
  
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];
  
  boot = {
    initrd = {
      availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usbhid" "ums_realtek" "uas" "sd_mod" ];
      kernelModules = [ ];
    };
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
  };

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/NIXROOT";
      fsType = "ext4";
    };
    "/boot" = {
      device = "dev/disk/by-label/NIXBOOT";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };
    "/home" = {
      device = "dev/disk/by-label/NIXHOME";
      fsType = "btrfs";
    };
  };

    swapDevices = [
    { device = "/dev/disk/by-uuid/fd6f17fa-8f5b-4a74-add6-4a24d13e28c0"; }
  ];

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
