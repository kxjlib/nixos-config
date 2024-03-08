{ inputs, outputs, lib, config, pkgs, ... }:

{
  imports =
    [
      ./modules/system/config.nix
    ];
  programs.zsh.enable = true;
  hardware.opengl.enable = true;
}
