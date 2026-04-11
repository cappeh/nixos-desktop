
{ pkgs, ... }:

{
  services.gvfs.enable = true;
  services.tumbler.enable = true; 
  services.openssh.enable = true;

  # services.displayManager.sddm = {
  #   enable = true;
  #   wayland.enable = true;
  #   theme = "sddm-astronaut-theme";
  #   extraPackages = [ pkgs.sddm-astronaut ];
  # };

  services.displayManager.plasma-login-manager = {
    enable = true;
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  environment.systemPackages = with pkgs; [
    pamixer
    pavucontrol

    sddm-astronaut
  ];
}
