{ inputs, outputs, lib, config, pkgs, ... }:

{
  imports =
    [
      ./modules/system/config.nix
    ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  programs.zsh.enable = true;
}
