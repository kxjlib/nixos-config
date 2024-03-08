{ pkgs, inputs, ... }:
let 
  tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
in {
  environment.systemPackages = [
    pkgs.greetd.tuigreet
  ];

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${tuigreet} --time --remember --cmd ${pkgs.swayfx}/bin/sway";
        user = "greeter";
      };
    };
  };

  systemd.services.greetd.serviceConfig = {
    Type = "idle";
    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";
    TTYReset = true;
    TTYVHangup = true;
    TTYVDisallocate = true;
  };
}