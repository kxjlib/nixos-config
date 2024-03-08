{ config, pkgs, ... }:

{
  ### Users

  # davo (Will Davies)
  users.users.davo = {
    isNormalUser = true;
    description = "Will Davies";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
			vscode
    ];
  };
}