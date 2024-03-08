{ ... }:

{
  imports = [
    ./boot.nix
    ./connectivity.nix
    ./hardware-configuration.nix
    ./localisation.nix
  ];

  ### Base NixOS Version
  system.stateVersion = "23.11";

  ### Enable Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}