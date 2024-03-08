{ config, pkgs, home-manager, ... }:

{
  home.username = "davo";
  home.homeDirectory = "/home/davo";
  home.packages = with pkgs; [
    lsd
    neovim
    pfetch-rs
    bluetuith
    direnv
    alacritty
    google-chrome
    fira-code-nerdfont
    protonup-qt
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
      vim = "nvim";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      jdinhlife.gruvbox
      jnoortheen.nix-ide
      arrterian.nix-env-selector
      mkhl.direnv
      rust-lang.rust-analyzer
      serayuzgur.crates
      ms-vscode.cpptools
      ms-vscode.cmake-tools
    ];
  };

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
