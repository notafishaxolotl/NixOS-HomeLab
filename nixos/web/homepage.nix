{ inputs, config, pkgs, ... }:

{
  services.homepage-dashboard = {
    enable = true;

    settings = {
      title = "The Center";
      cardBlur = "sm";
    };
  };

  services = [{
    "Infrastructure" = [
      {
          "Proxmox" = {
            icon = "proxmox.png";
            href = "https://192.168.1.100:8006";
            description = "Hypervisor";
          }
        }
      ];
    };
  ];

  widgets = [
    {
      resources = {
        cpu = true;
        memory = true;
        disk = "/";
      };
    }
  ];
  networking.firewall.allowedTCPPorts = [ 8082 ];
}
