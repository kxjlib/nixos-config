{ config, pkgs, home-manager, ... }:

{
  programs.zsh.enable = true;
  ### Users

  # davo (Will Davies)

  users.users.davo = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Will Davies";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  programs.java.enable = true;
}
