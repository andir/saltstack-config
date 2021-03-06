# THIS FILE IS CONTROLLED BY SALTSTACK!
#
# IPv4 / IPv6 firewall - tinc rules

domain (ip ip6)
table filter {
  chain INPUT {
    interface {{ pillar['tinc']['netname'] }} {
      proto tcp dport 179 ACCEPT;
    }
    interface fffd.bat {
      proto tcp dport 179 ACCEPT;
    }

    # Accept bird-lg
    proto tcp dport 5002 saddr 5.45.103.39 ACCEPT;
  }
}

