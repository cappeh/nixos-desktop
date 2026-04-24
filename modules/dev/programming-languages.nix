{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    uv
    lua
    python3
  ];
}
