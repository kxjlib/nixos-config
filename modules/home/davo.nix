{ config, pkgs, home-manager, ... }:

{
  home.username = "davo";
  home.homeDirectory = "/home/davo";
  home.packages = with pkgs; [
    vscode
    firefox
  ];

  programs.git = {
    enable = true;
    userName = "William Davies";
    userEmail = "will.davies05@outlook.com";
  };

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
