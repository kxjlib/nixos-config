{ config, pkgs, home-manager, ... }:

{
  ### Users

  # davo (Will Davies)

  users.users.davo = {
    isNormalUser = true;
    description = "Will Davies";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
