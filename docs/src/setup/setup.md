# Setup

For this project I use this Operating Systems:

- Debian
- Kali Linux 2025.2
- Alpine

🔐 Security zones (e.g., DMZ, internal, admin, SOC) are isolated — you can simulate this with separate VMs.
💻 Different roles (attacker, user, admin, firewall, router) usually run on different physical or virtual machines.
🔄 VMs let you snapshot, test, restore, and repeat — a crucial part of both blue-team and red-team workflows.
🌐 Network segmentation is key to enterprise defense — best simulated using bridges, NAT, VLANs, or virtual switches (like VDE or QEMU’s built-in network modes).


✅ 2. Suggested Attack Categories (Vectors)
Pick from these based on what you'd like to simulate:
Attack Type	Vector	Tools You Might Use	Requires GUI?
Reconnaissance	Passive or Active scanning	nmap, dnsenum, theHarvester	No
Phishing	Email-based social engineering	Gophish, custom web pages	Often yes
Exploitation	Web or network service	Metasploit, sqlmap, burpsuite	GUI useful
Credential Attack	Brute force, password reuse	hydra, john, hashcat, medusa	No (CLI works)
Pivoting	Post-exploitation movement	proxychains, sshuttle, impacket	No
Payload Delivery	Manual or via vulnerabilities	msfvenom, responder	Sometimes
