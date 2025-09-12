# Network Topology

> This section is heavily under construction it is not ready.

## ✅ Your Revised Network Layout

```bash
[ Host Machine ]
      |
   (NAT to real Internet)   <-- QEMU user-mode net, ON only during setup/updates
      |
+---------------------+
| Gateway / Proxy VM  |  <-- Acts as:
| - NAT to Internet   |     • Internet access during setup
| - Router/Switch     |     • Simulated WAN for lab
+-----+---------+-----+
      |         |
      |         +-- [ Attacker VM ] <-- Lives in simulated WAN
      |
(Internal WAN/Lab Bridge)
      |
[ Firewall VM ]  <-- WAN NIC connected to Internal WAN/Lab Bridge
      |
 (LAN Switch inside Firewall VM, or separate bridge for LAN)
      |
-----------------------------------------
    |        |           |          |     
|Dept1   |Dept2   |Dept3     |SOC/Admin VM|
|Finance |HR      |Developers|            |
```


![topology-1](/images/network-topology/topology.1.png)

---

🔄 Next Questions to Think About
What VM tool do you use to wire networking? QEMU bridges + tap? virt-manager? custom script?
Do you want to simulate Internet access (with NAT)?
Do you want to test IDS/IPS tools (e.g., Suricata)?
Do you want VLANs to be real (802.1Q) or simulated (software separated)?
Will you monitor from the host (Wireshark, etc.)?


Excellent direction  you’re clearly aligning this with **realistic enterprise-like network segmentation**, which is the right way to go. Let's refine the plan based on your remarks and add some structured suggestions.

---

## 🔍 Updated VM Use Cases + Recommendations

### 🧨 **1. Attacker Machine**

* ✅ **Use case**: Simulate *external threat actor*.
* ✅ **VM**: Kali Linux with XFCE (GUI tools like Burp, Metasploit, etc.).
* ✅ **Network**: Should be **outside of the internal LAN**.

  * Put on a separate virtual **bridge** (e.g., `br-attack`).
  * This bridge should connect to the **external interface** of the firewall/router VM.

**✅ Realism Check:** ✔️ This models how real attacks happen  from external Internet or unknown zones.

---

### 👨‍💻 **2. Admin + SOC Machine (Debian + XFCE)**

* ✅ **Use case**: Secure VM for **managing** the lab and **monitoring** it.
* ✅ **Tools**:

  * SSH keys for admin tasks
  * Ansible for automation
  * Splunk/Syslog/SOC tools (Falco, Wazuh, etc.)
* 🧩 **Suggestion**:

  * Use **separate user accounts** for `admin` and `soc`.
  * Or if you're comfortable: use 2 VMs for cleaner isolation, but resource cost increases.
* ✅ **Location**: Place it in a **management VLAN**, only reachable through firewall.

---

### 🔥 **3. Firewall VM**

* ✅ **Use case**: Route + filter all inter-segment traffic.
* ✅ **Distro**: **Alpine** is a strong choice  lightweight, hardened, reliable.
* ✅ **Network Setup**:

  * `eth0`: connected to attacker net (`br-attack`)
  * `eth1`: connected to internal LAN (`br-int`)
  * Optional `eth2`: management interface to admin VM

**Tools**:

* Use `nftables` or `iptables` (or both if Alpine has legacy support).
* Install **Suricata or Snort** here. See next section.

---

### 🧪 **4. IDS/IPS Choice: Suricata vs. Snort**

| Feature     | **Suricata** | **Snort**        |
| ----------- | ------------ | ---------------- |
| License     | GPLv2        | GPLv2            |
| Multithread | ✅ Yes        | ❌ No             |
| Protocols   | Layer 7 DPI  | Mainly Layer 3/4 |
| Performance | Fast, modern | Legacy-style     |
| Output      | JSON, EVE    | Unified2         |

✅ **Recommendation**: Use **Suricata**  especially since you're familiar with it already, and it's better suited for modern traffic inspection.

**Placement**: Install on **firewall VM** to inspect both inbound and outbound traffic.

---

### 🌐 **5. Router VM**

* ✅ **Use case**: Simulate *Internet access* or *inter-office routing*.
* 💡 Suggestion:

  * Combine **firewall + router** role into **one Alpine-based VM**.
  * NAT + DNS forwarding + DHCP server for lab subnets.
  * You can create **3 NICs**:

    * `eth0`: *external network (attacker/Internet simulation)*
    * `eth1`: *internal lab subnet*
    * `eth2`: *optional management interface*

---

### 🖥️ **6. Departmental VMs (5x)**

* ✅ **Use case**: Employees in various departments.
* Examples:

  * HR
  * Dev
  * Finance
  * Sales
  * R\&D
* 💡 Suggestion: Assign **separate VLAN/subnet** to each.
* ✅ Harden them differently depending on risk level.
* Use **Ansible** for initial provisioning.
* Add **logging agents** (rsyslog, Filebeat, etc.) to forward logs to SOC.

---

### 🧠 Suggested Additions

#### 🔐 PKI & Vault

* Set up **GPG or age-encrypted password vault** for managing:

  * Admin SSH keys
  * Preseed passwords
  * Ansible vault secrets
* Optionally: use `pass` + GPG or `ansible-vault`.

#### 🛜 DHCP/DNS

* Decide who will provide these:

  * Alpine firewall?
  * Or separate ISC DHCP + unbound DNS?

#### 📡 Monitoring

* Consider adding a **monitoring VM** (Prometheus/Grafana/Netdata).
* Tap internal traffic (e.g., use a port mirror bridge if supported).


## 🔧 What You Can Work on Next

1. **Bridge creation** in QEMU for `br-int`, `br-attack`, `br-mgmt`.
2. Setup **Alpine firewall/router** with:

   * NAT
   * Routing
   * Suricata
   * Static IPs for VMs
3. Define **subnets**:

   * e.g. `192.168.10.0/24` for internal
   * `192.168.20.0/24` for mgmt
   * `192.168.99.0/24` for attacker net
4. Start writing **QEMU scripts** to launch each VM and attach to proper bridges.

---

Would you like help creating bridge setup + QEMU launch scripts + Suricata config for Alpine next?


2. Temporary internet via NAT for setup only
For quick package installation:
Temporarily attach a VM to a QEMU NAT network for updates.
Disconnect it after updates are done and reconnect to lab LAN.
This avoids having a permanent internet path in the lab.


1. Host OS
Runs QEMU and your VMs.
Not part of the lab network (isolated).
2. Firewall VM (Alpine, 2+ NICs)
WAN NIC → Connected to a QEMU NAT network (this simulates the "internet" in your lab).
This is where updates and external tools can be downloaded.
In your simulation, the attacker's side connects here.
LAN NIC(s) → Connected to lab bridges (br0, br1, etc.).
These are your "company networks" with VLANs inside.
The firewall:
Acts as border firewall for your company network.
Routes traffic between attacker and company LAN.
Can apply NAT, ACLs, firewall rules (nftables/iptables).
3. Attacker VM
Connected to the WAN side of the Firewall VM.
This makes the attacker “outside” the company, just like an internet-based attacker.
Must break through firewall to reach inside network.
4. Bridges
On the LAN side of the firewall you can have one or more bridges:
Example: br0 with VLAN 10 (Finance) and VLAN 20 (HR).
Example: br1 with VLAN 30 (SOC/Admin).
Bridges simulate network switches, VLANs simulate segmentation.
5. Realism in simulation
In the real world, an attacker doesn't “find” the firewall  they just know they are outside, and the firewall is the company’s border with the internet.
Your WAN-side bridge (with attacker) is the simulated internet.
Your firewall’s LAN side is the protected internal company network.
