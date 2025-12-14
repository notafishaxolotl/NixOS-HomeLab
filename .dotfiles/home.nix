{ config, pkgs, inputs, lib, ... }:

{
  home.username = "wuluh";
  home.homeDirectory = "/home/acito";

  imports = [
    ./unstable.nix
  ];


  home.stateVersion = "25.11";

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
  ];

  programs.home-manager.enable = true;

}
