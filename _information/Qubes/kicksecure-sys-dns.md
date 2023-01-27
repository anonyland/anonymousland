---
layout: default1
description: Notes reguarding kicksecure DNS
title: kicksecure-sys-dns
permalink: /qubes/kicksecure-sys-dns
---

Setting up a hardened `sys-dns` to proxy DNS traffic through `dnscrypt`

<br>

### Prerequisites:

Create a Debian minimal templated and setup [kicksecure](./#debian-security).

Install the required packages:

``sudo apt install dnscrypt-proxy qubes-core-agent-networking``

The `dnscrypt` settings are located at `/etc/dnscrypt-proxy/`

Edit ``/rw/config/rc.local`` to:

<br>

```
#!/bin/sh

# This script will be executed at every VM startup, you can place your own
# custom commands here. This includes overriding some configuration in /etc,
# starting services etc.

# Example for overriding the whole CUPS configuration:
#  rm -rf /etc/cups
#  ln -s /rw/config/cups /etc/cups
#  systemctl --no-block restart cups

# allow redirects to localhost
/usr/sbin/sysctl -w net.ipv4.conf.all.route_localnet=1
/usr/sbin/iptables -I INPUT -i vif+ -p tcp --dport 53 -d 127.0.0.1 -j ACCEPT
/usr/sbin/iptables -I INPUT -i vif+ -p udp --dport 53 -d 127.0.0.1 -j ACCEPT

# redirect dns-requests to localhost
/usr/sbin/iptables -t nat -F PR-QBS
/usr/sbin/iptables -t nat -A PR-QBS -d 10.139.1.1/32 -p udp -m udp --dport 53 -j DNAT --to-destination 127.0.0.1
/usr/sbin/iptables -t nat -A PR-QBS -d 10.139.1.1/32 -p tcp -m tcp --dport 53 -j DNAT --to-destination 127.0.0.1
/usr/sbin/iptables -t nat -A PR-QBS -d 10.139.1.2/32 -p udp -m udp --dport 53 -j DNAT --to-destination 127.0.0.1
/usr/sbin/iptables -t nat -A PR-QBS -d 10.139.1.2/32 -p tcp -m tcp --dport 53 -j DNAT --to-destination 127.0.0.1

# set /etc/resolv.conf and start dnscrypt-proxy
echo "nameserver 127.0.0.1" > /etc/resolv.conf
/usr/bin/systemctl enable dnscrypt-proxy.service --now
```
<br>


### Setup:

Create an AppVM `dvm-dnscrypt` based on the template created above with:

- NetVM: `sys-net`
- Autostart: `true`
- Provides Network: `true`

<br>

Clone `dvm-dnscrypt`and create a `sys-dns` as a DispVM, ensuring the same settings as above are set.

Set your `sys-fireall` to connect to `sys-dns`

<br>

### Sources

- [[guide] how-to setup a sys-dns qube](https://forum.qubes-os.org/t/guide-how-to-setup-a-sys-dns-qube/13749)