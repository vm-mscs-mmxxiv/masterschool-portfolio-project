# Hosts and Tools

##  1. Attacker Machine

- Use case: Simulate -external threat actor-.
- VM: Kali Linux with XFCE (GUI tools like Burp, Metasploit, etc.).
- Network: Should be outside of the internal LAN.

  - Put on a separate virtual bridge (e.g., `br-attack`).
  - This bridge should connect to the external interface of the firewall/router VM.

Realism Check: This models how real attacks happen  from external Internet or unknown zones.

---

## Admin + SOC Machine (Debian + XFCE)

- Use case: Secure VM for managing the lab and monitoring it.
- Tools:

  - SSH keys for admin tasks
  - Ansible for automation
  - Splunk/Syslog/SOC tools (Falco, Wazuh, etc.)
- Suggestion:

  - Use separate user accounts for `admin` and `soc`.
  - Or if you're comfortable: use 2 VMs for cleaner isolation, but resource cost increases.
- Location: Place it in a management VLAN, only reachable through firewall.

---

## Firewall VM

- Use pfSense? It possible to install Suricata on pfSense, [here is video](https://www.youtube.com/watch?v=LaB6-Klnh7w)
- Use case: Route + filter all inter-segment traffic.
- Network Setup:
  - `eth0`: connected to attacker net (`br-attack`)
  - `eth1`: connected to internal LAN (`br-int`)
  - Optional `eth2`: management interface to admin VM

Tools:

- Install Suricata

---

## IDS/IPS Choice: Suricata vs. Snort

| Feature     | Suricata | Snort        |
| ----------- | ------------ | ---------------- |
| License     | GPLv2        | GPLv2            |
| Multithread | Yes          | No             |
| Protocols   | Layer 7 DPI  | Mainly Layer 3/4 |
| Performance | Fast, modern | Legacy-style     |
| Output      | JSON, EVE    | Unified2         |

Recommendation: Use Suricata  especially since you're familiar with it already, and it's better suited for modern traffic inspection.

Placement: Install on firewall VM to inspect both inbound and outbound traffic.

---

### Router VM

- Use case: Simulate -Internet access- or -inter-office routing-.
- Suggestion:
  - Combine firewall + router role into one Alpine-based VM.
  - NAT + DNS forwarding + DHCP server for lab subnets.
  - You can create 3 NICs:
    - `eth0`: -external network (attacker/Internet simulation)-
    - `eth1`: -internal lab subnet-
    - `eth2`: -optional management interface-

---

##  Departmental VMs (5x)

- Use case: Employees in various departments.
- Examples:
  - HR
  - Dev
  - Finance
  - Sales
  - R\&D
- Suggestion: Assign separate VLAN/subnet to each.
- Harden them differently depending on risk level.
- Use Ansible for initial provisioning.
- Add logging agents (rsyslog, Filebeat, etc.) to forward logs to SOC.

---

## PKI & Vault

- Set up GPG or age-encrypted password vault for managing:
  - Admin SSH keys
  - Preseed passwords
  - Ansible vault secrets
- Optionally: use `pass` + GPG or `ansible-vault`.

## DHCP/DNS

- Decide who will provide these:

  - Alpine firewall?
  - Or separate ISC DHCP + unbound DNS?

## Monitoring

- Consider adding a monitoring VM (Prometheus/Grafana/Netdata).
- Tap internal traffic (e.g., use a port mirror bridge if supported).


## What You Can Work on Next

1. Bridge creation in QEMU for `br-int`, `br-attack`, `br-mgmt`.
2. Setup Alpine firewall/router with:

   - NAT
   - Routing
   - Suricata
   - Static IPs for VMs
3. Define subnets:
   - e.g. `192.168.10.0/24` for internal
   - `192.168.20.0/24` for mgmt
   - `192.168.99.0/24` for attacker net
4. Start writing QEMU scripts to launch each VM and attach to proper bridges.
