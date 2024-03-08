{ inputs, outputs, lib, config, pkgs, ... }:

{
  imports =
    [
      ./modules/system/core/mod.nix
      ./modules/system/users/davo.nix
    ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    direnv
    bluetuith
    neofetch
  ];
}
