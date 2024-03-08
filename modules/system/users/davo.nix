{ config, pkgs, home-manager, ... }:

{
  ### Users

  # davo (Will Davies)

  users.users.davo = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "Will Davies";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
