{ pkgs, ... }:

let
  languages = with pkgs; [
    go
    uv
    lua
    python3
  ];

  lsps = with pkgs; [
    gcc
    lua-language-server
    bash-language-server
    pyright
    gopls
    rustup
  ];
in
{
  environment.systemPackages = languages ++ lsps;
}

