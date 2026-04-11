{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    lua-language-server
    bash-language-server
    pyright
    gopls
  ];
}
