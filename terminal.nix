{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    autosuggestions = {
      enable = true;
    };

    syntaxHighlighting = {
      enable = true;
    };

    shellAliases = {
      reload = "sudo nixos-rebuild-switch --flake /home/cappie/nixos/";
      clean = "sudo nix-collect-garbage -d";
      optimize = "sudo nix-store --optimize";
    };

    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };

    environment.systemPackages = with pkgs; [
      starship
      ghostty
      kitty
      wget
      curl
      httpie
      bat
      fzf
      eza
      yazi
      jq
      ripgrep
      tmux
      fd
      lsof
      git
      wl-clipboard
      htop
      btop
    ];
  }

