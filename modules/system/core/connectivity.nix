{ config, pkgs, ... }:

{
  ### Networking
  networking = {
    hostName = "castlead";
    networkmanager.enable = true;
  };

  ### Printing
  services.printing.enable = true;

  ### Sound
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  ### Timezone
  time.timeZone = "Europe/London";

  ### Bluetooth
  services.blueman.enable = true;
  hardware.bluetooth = {
    enable = true;
    settings.General.Experimental = true;
  };
}