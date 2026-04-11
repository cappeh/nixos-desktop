{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hyprlock
    hypridle
    hyprpaper
    hyprlang
    hyprpolkitagent
    fuzzel
    waybar
    swaynotificationcenter
    xdg-desktop-portal-hyprland
  ];
}
