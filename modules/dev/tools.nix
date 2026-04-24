{ pkgs, ... }:

{
  programs.thunar = {
    enable = true;
    plugins = with pkgs; [
      thunar-archive-plugin
      thunar-volman
    ];
  };

  programs.wireshark.enable = true;

  environment.systemPackages = with pkgs; [
    # Browsers
    firefox
    brave

    # Office / productivity
    libreoffice
    postman

    # Build tools
    gnumake
    gcc

    # Networking
    dig
    psmisc
    traceroute
    wireshark

    # File tools
    zip
    unzip
    p7zip
  ];
}
