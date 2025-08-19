# Attack

Given your **planned topology** (2 departments, firewall/router VM, SOC/Admin, attacker machine, minimal Alpine endpoints), and your **goal** to run multiple scenarios without needing a huge setup, we can plan tests that are:

* **Realistic** — something you might see in a real network.
* **Resource-friendly** — doable on your hardware.
* **Incremental** — start simple, grow complexity later.

This is giving me the sence, that the whole Lab is about two major things

- testing the network (firewalls, segmentation, key servers)
- testing key network devices and hosts hardening, detecting and reporting

---

## **Phase 1 – Network & Segmentation Testing (Foundations)**

Why? These are the easiest to run without much resource use and will teach you **visibility** and **control** in your network.

1. **Port Scanning & Service Enumeration**

   * **What:** Attacker runs `nmap` against each subnet to discover hosts and services.
   * **Goal:**

     * Verify segmentation (should attacker “see” only allowed subnets?).
     * Learn to detect scans with IDS (Suricata/Snort).
   * **Why important:** Port scanning is the first stage of most intrusions.

2. **Firewall Evasion Testing**

   * **What:** Use `nmap` options like fragmented packets or decoys.
   * **Goal:** Test if your firewall blocks or logs suspicious patterns.
   * **Why important:** Firewalls aren’t just about “block all” — you need to see if weird traffic slips through.

---

## **Phase 2 – Internal Network Exploitation (No Internet Required)**

Why? Real breaches often happen **after** the attacker is inside (via phishing, infected USB, etc.).

3. **SMB/FTP Weak Credentials**

   * **What:** Set up an endpoint with weak local service credentials. Try to brute-force them from attacker machine.
   * **Goal:** Detect login attempts, block them with firewall rules or fail2ban.
   * **Why important:** Weak creds are still a top cause of breaches.

4. **Privilege Escalation on Endpoint**

   * **What:** Use a vulnerable Alpine package or misconfigured sudo to escalate from user to root.
   * **Goal:** Learn to spot post-exploitation activity from SOC machine.
   * **Why important:** Defense-in-depth is useless if endpoint privilege escalation is trivial.

---

## **Phase 3 – Lateral Movement & Data Exfiltration**

Why? Real attackers don’t stop at the first machine.

5. **Pass-the-Hash / Credential Reuse**

   * **What:** Use same local password hash in two VMs. Once attacker compromises one, try to SSH into the other.
   * **Goal:** Spot unusual SSH logins from wrong subnets.
   * **Why important:** Credential reuse is very common in real companies.

6. **Simulated Data Theft**

   * **What:** Put “sensitive” files in Finance dept. Simulate sending them out to the attacker over an allowed port (e.g., HTTPS).
   * **Goal:** Learn to detect unusual outbound traffic in Suricata logs.
   * **Why important:** Most security teams fail to catch outbound exfiltration early.

---

## **Phase 4 – Denial of Service & Stress Testing (Optional)**

Why? Resource heavy, but worth learning at small scale.

7. **Service Flooding (DoS)**

   * **What:** Run a small-scale SYN flood against one service to see how it’s logged.
   * **Goal:** Create firewall rate-limiting rules.
   * **Why important:** Even small DoS events can cause disruptions.

---

💡 **Mentor’s Advice:**

* Start with **Phase 1** and **Phase 2** — they require no internet, low resources, and teach 80% of what matters in real network security.
* Keep logs from every attack in SOC — these become your **incident reports** for documentation.
* Only move to Phase 3 and 4 once you’re comfortable spotting attacks in logs.

---

## Router-on-the-Stick

That's an excellent observation and a perfect description of a common and effective network design in a real office. You are absolutely correct.

### **The Real-World Office Setup**

In a typical office, the setup looks like this:

1.  **Router:** The router has a single physical interface connected to a core switch.
2.  **Core Switch:** This switch is a "smart" or "managed" switch, capable of understanding VLANs (Virtual LANs).
3.  **VLANs on the Switch:** On this single physical connection from the router, the switch is configured with multiple VLANs. Each VLAN is assigned a unique ID (e.g., VLAN 10, VLAN 20) and a corresponding IP subnet (e.g., `192.168.10.0/24` for VLAN 10, `192.168.20.0/24` for VLAN 20).
4.  **Trunk Port:** The single port on the switch connected to the router is a "trunk port." This port is configured to carry traffic for all VLANs, and it adds a special header (an 802.1Q tag) to each packet to identify which VLAN it belongs to.
5.  **Router's Sub-interfaces:** On the router's side, its single physical interface is configured with multiple "sub-interfaces," one for each VLAN. The router can then route traffic between the different VLANs. This is called **Router-on-a-Stick**.

This design is efficient because you don't need a separate physical cable and router interface for every VLAN, which saves on hardware and complexity.

### **What You Can Do in Your Lab to Emulate This**

You can absolutely emulate this exact setup in your QEMU lab. This is a much more realistic and advanced approach than just using a separate virtual network for each VLAN.

Here's a step-by-step plan for your lab:

**Step 1: The Core Switch VM (The VLAN-Aware Device)**

Instead of just using a standard Linux bridge on your host, you can create a dedicated VM to act as your core, VLAN-aware switch.

* **Create a Linux VM (e.g., Alpine or Debian):** This VM will act as your "smart switch."
* **Configure It with a Linux Bridge:** Inside this VM, you will set up a Linux bridge (`br0`) and add all of its network interfaces to it.
* **Enable VLAN Filtering:** You'll enable VLAN filtering on the bridge, which allows it to understand and forward traffic based on VLAN tags.

**Step 2: Connect the Router VM**

* Your Alpine Linux Router VM will have one physical network interface that connects to this new "Core Switch" VM.
* On the router VM, you'll configure **sub-interfaces** for each VLAN. For example, using the `ip` command, you would create something like `eth1.10` and `eth1.20`.
* You will then assign the CIDR addresses to each sub-interface (e.g., `ip addr add 192.168.10.1/24 dev eth1.10`).

**Step 3: Connect the Host VMs**

* Each of your other host VMs (the workstations, servers, etc.) will have a single network interface.
* This interface will connect to the "Core Switch" VM.
* Crucially, inside each host VM, you will configure a VLAN-aware sub-interface. For example, a VM for VLAN 10 would have its network interface configured with a VLAN tag of `10`.

This approach provides a fantastic hands-on experience with VLANs and router-on-a-stick, all within your isolated lab.

### **The Big Picture of Your Lab's Design**

Your final lab topology would look something like this:

1.  **QEMU Host Machine:** You create the virtual networks that connect your VMs.
2.  **Alpine Router VM:** This VM has a WAN interface (to the internet) and a LAN interface that connects to the "Core Switch" VM.
3.  **Alpine Core Switch VM:** This is your central hub. It accepts connections from the router and all the other VMs. It's the brains that handles the VLAN tagging.
4.  **Other Host VMs:** These are your workstations, servers, etc. They are simply configured to be members of a specific VLAN, and they connect to the core switch.

## VPN between networks

You've brought up two of the most critical and challenging aspects of network security: **resource constraints** and **securing internal traffic**. You are absolutely right—this adds a significant layer of complexity, but it's exactly what makes for a valuable and realistic lab.

Let's address both of your concerns with a strategic approach that works within your hardware limitations.

### **Addressing Resource Constraints**

Since you can't run many VMs, the best approach is to make each VM serve multiple roles.

* **Router & Core Switch in One:** Instead of a separate router VM and a core switch VM, you can combine these roles into a single, powerful Alpine Linux VM. This VM will still have the three network interfaces (WAN, Floor 1 LAN, Floor 2 LAN), but you'll use its internal capabilities to handle both the routing **and** the VLANs.
* **Minimalist Guest VMs:** For your host machines on each floor, use the most minimal Linux distribution possible (like Alpine) and run them "headless" (without a graphical user interface). This will keep their RAM and CPU usage to an absolute minimum.
* **Simulate, Don't Replicate:** You don't need dozens of machines. A simple setup of **one router VM**, **one host on Floor 1**, and **one host on Floor 2** is enough to demonstrate a MiTM attack and test your security solutions. You can scale it up later if resources allow.

### **The MITM Attack and Encrypting Inter-Floor Traffic**

You are correct that traffic between the floors is a significant security concern. An attacker who gains a foothold on one floor could potentially snoop on or modify traffic to the other. Encrypting this traffic is the gold standard for protection.

#### **The Best Option: VPN Tunneling**

A **Virtual Private Network (VPN)** tunnel is the most traditional and effective way to encrypt traffic between two separate networks over an insecure medium.

**How to Implement This in Your Lab:**

You have two main options, and you can test both in your lab to see the difference. The most efficient option is to set up a site-to-site VPN.

1.  **Site-to-Site VPN (The Best and Most Realistic Option):**
    * In your single router/switch VM, you will act as a VPN gateway.
    * You will configure a **VPN server** that listens for connections on one network interface (e.g., the one for Floor 1) and a **VPN client** on another interface (e.g., the one for Floor 2).
    * When traffic needs to go from Floor 1 to Floor 2, the router VM will automatically encrypt it, send it through the tunnel, and then decrypt it on the other side.
    * This setup is highly realistic for a large enterprise where two separate physical networks need to securely communicate.

2.  **Host-to-Host VPN (A More Complex Option):**
    * You could also have the two host VMs themselves establish a VPN tunnel between each other, without the router handling the encryption.
    * This is less common for a full "site-to-site" connection but is perfect for demonstrating a specific secure connection between two endpoints.

#### **Why VPNs Add Complexity (But Are Worth It)**

You're right, this adds complexity. You will need to:
* **Choose a VPN Protocol:** The most common are OpenVPN and WireGuard. WireGuard is an excellent choice for a lab due to its simplicity and high performance.
* **Generate Keys/Certificates:** You need a way to authenticate the two sides of the tunnel.
* **Configure Routing:** You need to ensure the router knows that traffic for the "other" floor should be sent through the VPN tunnel and not a standard route.
* **Firewall Rules:** Your firewall must be configured to allow the VPN traffic through.

### **Simulating the MiTM Attack**

With your lab set up, you can now simulate the MiTM attack.

* **The Attacker Machine:** You can use a third, very lightweight VM (e.g., Kali Linux or another Alpine VM with the right tools) and place it on one of the floor networks.
* **The Attack:** You will use tools like `arpspoof` to perform an ARP spoofing attack. This will trick the other VMs on that network into thinking the attacker machine is the router, so all their traffic is sent to you first.
* **The Test:**
    * **Without Encryption:** You will use a tool like `tcpdump` or Wireshark on the attacker machine to see all the traffic passing in plaintext. This will demonstrate the success of the MiTM attack.
    * **With Encryption:** You will repeat the attack, but this time, the traffic between the floors will be encrypted by your VPN tunnel. The attacker machine will only see garbled, unreadable data, demonstrating the effectiveness of your security measure.

