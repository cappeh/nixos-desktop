{ pkgs, ... }:

{
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-archive-plugin
      thunar-volman
  ];

  environment.systemPackages = with pkgs; [
    gcc
    firefox
    brave
    postman
    libreoffice

    psmisc

    dig

    # File Tools
    zip
    unzip
    p7zip
  ];
}
