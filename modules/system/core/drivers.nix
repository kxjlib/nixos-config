{ pkgs, config, ... }:

{
  hardware.opengl = {
    driSupport = true;
    driSupport32Bit = true;

    extraPackages = with pkgs; [ amdvlk ];
    extraPackages32 = with pkgs; [ driversi686Linux.amdvlk ];
  };
}