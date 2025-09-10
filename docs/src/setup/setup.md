# Setup

This project is being developed on a low-resource Apple OS machine. Due to limitations of the Host Machine, it's not possible to fully replicate the office LAN environment within the lab. However, my approach is to maintain a network structure that closely resembles the real one, within the constraints of the available resources.

I plan to create a few network topologies using several  virtual machines (VMs), simulating micro-segmentation. While the Host Machine cannot support multiple VLANs simultaneously, I intend to simulate separate VLANs using a VM configured as a router, firewall, and switch. This "border" VM will enforce network segmentation and access controls. Network ACLs will be configured, and I plan to test the overall security posture using a designated Attack Machine.

UTM, the QEMU front-end used on macOS, is not as fully featured as its counterpart on Linux. Many features are either limited or not fully implemented, especially in terms of networking. These limitation, both of the host hardware and the UTM platform, must be taken into account when designing the lab environments.        
I plan to follow a structured approach when creating the labs. Each lab will have a specific purpose, for example, testing a known tactic or vulnerability. While each lab will be designed to function independently, there may be some overlap in the setup and configuration of machines across labs.


For this project I use this Operating Systems:

- Debian: (SOC / Admin) Machine
- Kali Linux 2025.2: Attack Machine
- Alpine: Network Devices / End Hosts

## Hipevisor

Originally I planned to use QEMU as majour hypervisor for Labs in this project. Due to host machine limitations and peculiarities of QEMU for Apple OS I have spend at least two days trying to figure out how to use CLI Tools to setup and run the system.         
The Project is  really late for due date and although it would be beneficiary to automate as much as possible I fall back of using UTM Front-end of QEMU for Apple OS.       

## Notes

> Note (04.09.25): The project deadline is less than 10 days away. I realize I may not be able to complete everything I had initially planned. However, I’ve decided to maintain a steady pace. This situation is common in real-world engineering work, and the ability to stay focused under pressure is a skill I am continuing to develop. I’ve seen the negative impact when engineers cut corners due to management pressure—sometimes with long-term consequences for the company.
>
> As I am still learning, this may be one of the few chances I get to deeply engage with this type of project. I've rushed through previous projects due to deadlines, and the result was poor-quality work that served neither as good learning material nor as portfolio content. For these reasons, I am prioritizing quality over quantity, aiming for a deeper understanding rather than rushing from one task to another.

## Attacks 

✅ 2. Suggested Attack Categories (Vectors)
Pick from these based on what you'd like to simulate:
Attack Type	Vector	Tools You Might Use	Requires GUI?
Reconnaissance	Passive or Active scanning	nmap, dnsenum, theHarvester	No
Phishing	Email-based social engineering	Gophish, custom web pages	Often yes
Exploitation	Web or network service	Metasploit, sqlmap, burpsuite	GUI useful
Credential Attack	Brute force, password reuse	hydra, john, hashcat, medusa	No (CLI works)
Pivoting	Post-exploitation movement	proxychains, sshuttle, impacket	No
Payload Delivery	Manual or via vulnerabilities	msfvenom, responder	Sometimes
