# Network Topology

> This section is heavily under construction it is not ready.

## Revised Network Layout

Some rough Idea how network may look like.

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

Again this image is not exacly the network I would like to create. I was trying to create something with tools at hand. This is basically a test how shall things look like.

![topology-1](/images/network-topology/topology.1.png)
