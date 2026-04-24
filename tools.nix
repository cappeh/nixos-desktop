{ pkgs, ... }:

{
  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs; [
    thunar-archive-plugin
      thunar-volman
  ];

  programs.wireshark = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    gnumake
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

    wireshark
  ];
}
