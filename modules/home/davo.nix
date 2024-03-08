{ config, pkgs, home-manager, ... }:

{
  home.username = "davo";
  home.homeDirectory = "/home/davo";
  home.packages = with pkgs; [
    vscode
    firefox
    lsd
    neovim
    pfetch-rs
    bluetuith
    direnv
  ];

  programs.git = {
    enable = true;
    userName = "William Davies";
    userEmail = "will.davies05@outlook.com";
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      rebuild = "sudo nixos-rebuild switch --flake /home/davo/.config/nixos/";
      ls = "lsd";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };


  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
