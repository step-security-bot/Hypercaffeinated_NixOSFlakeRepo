{ config, lib, pkgs, ... }:

{

  chaotic = {
    mesa-git = {
      enable = true;
    };
  };
  
  environment.systemPackages = [ 
    pkgs.zed-editor_git
    pkgs.xdg-desktop-portal-wlr_git
    pkgs.wlroots_git
    pkgs.wayland_git
    pkgs.wayland-scanner_git
    pkgs.wayland-protocols_git
    pkgs.vulkanPackages_latest.vulkan-volk
    pkgs.vulkanPackages_latest.vulkan-validation-layers
    pkgs.vulkanPackages_latest.vulkan-utility-libraries
    pkgs.vulkanPackages_latest.vulkan-tools
    pkgs.vulkanPackages_latest.vulkan-loader
    pkgs.vulkanPackages_latest.vulkan-headers
    pkgs.vulkanPackages_latest.vulkan-extension-layer
    pkgs.vulkanPackages_latest.spirv-tools
    pkgs.vulkanPackages_latest.spirv-cross
    pkgs.vulkanPackages_latest.glslang
    pkgs.vulkanPackages_latest.gfxreconstruct
    pkgs.spirv-headers_git
    #pkgs.nix-lazytrees2_git
    pkgs.mesa_git
    pkgs.mesa32_git
    pkgs.mangohud_git
    pkgs.mangohud32_git
    pkgs.libportal_git
    pkgs.libdrm_git
    pkgs.libdrm32_git
    pkgs.libbpf_git
    pkgs.latencyflex-vulkan
    pkgs.firefox_nightly
    pkgs.bpftools_full
    pkgs.appmenu-gtk3-module
  ];
  
}
