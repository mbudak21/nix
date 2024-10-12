{ pkgs, ... }:

{
  networking.networkmanager.enable = true;
  networking.networkmanager.dns = "none";
  networking.nameservers = [
    "127.0.0.1"
    "::1"
  ];
  services.stubby = {
    enable = true;
    settings = pkgs.stubby.passthru.settingsExample // {
      upstream_recursive_servers = [
        {
          address_data = "1.1.1.1";
          tls_auth_name = "cloudflare-dns.com";
          tls_pubkey_pinset = [
            {
              digest = "sha256";
              value = "4pqQ+yl3lAtRvKdoCCUR8iDmA53I+cJ7orgBLiF08kQ=";
            }
          ];
        }
        {
          address_data = "1.0.0.1";
          tls_auth_name = "cloudflare-dns.com";
          tls_pubkey_pinset = [
            {
              digest = "sha256";
              value = "4pqQ+yl3lAtRvKdoCCUR8iDmA53I+cJ7orgBLiF08kQ=";
            }
          ];
        }
      ];
    };
  };

  networking.wg-quick.interfaces = {
    wg0 = {
      address = [
        "10.0.0.5/24"
      ];
      dns = [
        "1.1.1.1"
      ];
      privateKeyFile = "/home/gabechu/.wireguard/private";

      peers = [
        {
          publicKey = "ExKzeW0jNPCrDAZ7LUCGQR1hi3rEFc6OyWVMF4xX8Hg=";
          allowedIPs = [
            "0.0.0.0/0"
            "::/0"
          ];
          endpoint = "217.160.190.27:51820";
          persistentKeepalive = 25;
        }
      ];
    };
  };

}
