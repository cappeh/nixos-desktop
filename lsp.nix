{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    lua-language-server
    bash-language-server
    pyright
    gopls
    rustup
  ];
}
