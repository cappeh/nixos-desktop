{
  description = "Cappie NixOS Desktop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.cappie-nixos = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
        ./bluetooth.nix
        ./lsp.nix
        ./fonts.nix
        ./hyprland.nix
        ./programming-languages.nix
        ./services.nix
        ./terminal.nix
        ./tools.nix
      ];
    };
  };
}
