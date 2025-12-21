{ inputs, config, pkgs, ... }:

{
  imports = [
    ./homepage.nix
    ./tailscale.nix
    ./ttyd.nix
  ];
}
