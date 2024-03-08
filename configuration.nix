{ inputs, outputs, lib, config, pkgs, ... }:

{
  imports =
    [
      ./modules/core/mod.nix
      ./modules/users/davo.nix
    ];

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    vim
    direnv
    bluetuith
    neofetch
  ];

  programs.git = {
    enable = true;
    #userName = "William Davies";
    #userEmail = "will.davies05@outlook.com";
  };

  ### Enable Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  ### Base NixOS Version
  system.stateVersion = "23.11";
}
