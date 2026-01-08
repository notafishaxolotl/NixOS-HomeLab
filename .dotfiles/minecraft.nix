{ config, pkgs, lib, ... }:

{

  imports = [
    mods.nix
  ];

  services.minecraft-servers = {
    enable = true;
    eula = true;
    openFirewall = true;

    servers.fabric = {
      enable = true;
      declarative = true;

      package = pkgs.fabricServers.fabric-1_21_1.override {
        loaderVersion = "0.16.10";
      }; 

      serverProperties = {
        server-port = 43000;
        difficulty = 2;
        gamemode = 0;
        max-players = 5;
        motd = "WuluH";
        white-list = true;
        allow-cheats = false;
      };

      operators = {
      # Use https://mcuuid.net/ to get a Minecraft UUID for a username
        xr_lynx = {
          "b55d65b2-3aea-4a29-968c-0a405b5a9d26";
          level = 4;
          bypassesPlayerLimit = true;
        };
      };

      whitelist = {
        xr_lynx = "b55d65b2-3aea-4a29-968c-0a405b5a9d26";
      };
    };
  };
}
