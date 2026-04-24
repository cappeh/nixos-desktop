{
  description = "Cappie NixOS Desktop";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.cappie-nixos = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
        ./modules/hardware/bluetooth.nix
        ./modules/desktop/gtk.nix
        ./modules/desktop/fonts.nix
        ./modules/desktop/hyprland.nix
        ./modules/dev/programming.nix
        ./modules/services/services.nix
        ./modules/dev/terminal.nix
        ./modules/dev/tools.nix
      ];
    };
  };
}
