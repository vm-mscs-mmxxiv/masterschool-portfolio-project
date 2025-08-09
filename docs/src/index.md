# Masterschool Capstone Project

## Objective

I have to act as if I'm a Cybersecurity Engineer tasked to create, monitor, run midsize company security.
As part of the assignment there was a simulated chat with hihgly ranked executives of the company. General conclusions of the companie's specifications are as following.

### Company objectives and structure

The company is middle size consulting company. Specializing in providing business consulting, data-driven strategy, and digital transformation support to mid-size and enterprise clients. Company have publicly available as well as highly secure data. Data privacy vary depending on the client's needs.

Companie's Operations are subject to heavy regulations. GDPR, HIPAA, ISO 27001, PCI-DSS.     
The Company is subject to industry audit and certifications.

The companie's highly ranked executives have quite high Risk Appetite. But ask for high level of security operations. Companie's CEO and CFO have approved that if it is practical and required they are ready to invest in security operations.

With open minded approach to AI and more 'innovative' solutions high risk appetite and tolerance could lead to finantial and reputation loses.

### Current Department Sizes (≈100 employees total)

- Client Services / Consulting – ~35 people (core delivery team)
- Sales & Marketing – ~15 people
- Finance & Accounting – ~8 people
- Human Resources – ~6 people
- IT & Systems Support – ~10 people
- Operations / Admin – ~12 people
- Compliance & Risk – ~5 people
- Leadership / Executive – ~4 people

### Projected Growth (2–3 Years)

- Client Services / Consulting: +30–40% growth (driven by new contracts and expansion into new regions). Expect to reach ~45–50 staff.
- Sales & Marketing: +25–30% growth to expand market share—likely 18–20 staff.
- Finance & Accounting: Minimal growth (~10–15%) as automation offsets headcount increases—9–10 staff.
- Human Resources: +30–40% to handle hiring surge—likely 8–9 staff.
- IT & Systems Support: +50% growth due to network expansion, multi-site support—up to 15 staff.
- Operations / Admin: +20% to maintain service levels—~14–15 staff.
- Compliance & Risk: +40–50% due to more regulated clients—up to 7–8 staff.
- Leadership / Executive: Small increase as structure flattens—likely 5–6 executives.

### Plans to grow and expand

- Geographic expansion (possible satellite offices)
- More remote hires, more BYOD. Requiring stronger IT and HR presence
- Diversification into data analytics and digital transformation services
- Increasing compliance demands from larger and more regulated clients
- Increase usage of modern solutinos such as AI in day-to-day activities
- Considering creating new teams in Data Analytics and Product Development
- There is a possibility of HQ relocation. Legal complience, need in more space, security can drive stakeholders to this decision.

## The Office

The Office is a mix of open workspaces, private offices, meeting rooms, and a server/storage room on the second floor. Staff are split between on-site and remote, with around 40 people regularly in the office. The server room is badge-access only, and our main entrance requires electronic access. Visitor sign-in is manual for now but managed at reception. Currently, about 60% on-site, 40% remote. This  expect to shift closer to 50/50 as more distributed talent hired.

The building has been audited and certified within the last 12 months to accommodate highly data-sensitive operations. This includes compliance with relevant building security standards, controlled access, and infrastructure resilience requirements. Certificates are on file and available for inspection.

### The Office's Floor plan

Ground floor

- Reception      
- Sales & Marketing (Partition)
- Meeting Room
- Client Services 
- Pantry / Canteen
- General Workspace


Second floor

- Server Room (Secure)
- HR Dept (Partition)
- Finance Dept (Partition)
- Meeting Room
- Compliance & Risk (Partition)
- IT Support

### The Office's Inventory and power supply

Currently, there is no dedicated generator for our suite.
UPS (Uninterruptible Power Supplies) are installed for critical systems—including the server room, networking equipment, and key workstations in **Finance, HR, and Compliance**. They provide short-term power during outages to allow for safe shutdown or switchover.


### Office Networking

Don't assume we have wiring everywhere—we may need to retrofit. Employees need uninterrupted access to systems regardless of floor or location.

On-site staff need stable LAN and Wi-Fi, while remote teams rely on cloud tools, VPNs, and video calls

## Data

## Cybersecurity

Physical access to employee files (both digital and printed) is tightly controlled. Sensitive areas are locked, and file cabinets are restricted.

Ensure that the cabling layout and switch placements don’t expose us to tampering (e.g., unsecured patch panels or wall jacks in public areas).


The server room is compliant, but other closets or impromptu setups wouldn’t be.

## Suggestions

### Risks, Threats, Comlyance

In the modern world 100% secuirty and protection unfortunetly is not possible. The companie's stakeholders and highly ranked executives  would require to make a ballance and CFO would need to get ready for fines and finantial loses. Company would require steady approach towards security. Short terms goals are:

- proper data rating
- data protection
    - appoint DPO (Data Protection Offider), and other officers including: data owner, data controller, data custodian, data processor, data user.
    - write requirements for this roles to properly assigh and manage ACLs for companie's employees
- create, update available to employeessecurity related documentation. Plan to run trainings and seminars.
- need security team SOC.
- write playbooks to different teams. Make sure that employees know how to react to different attacks and threats. At least they shall know what not to do and who to contact for help.

### Change floor plan

There is a whole floor between our flors that mean that cables can be tampered there to install taps. It is hard to protect something that you do not controll. At the moment company do not controll the whole floor between our network.

> Inspecting physical cables for wiretaps and Man-in-the-Middle (MITM) attacks is a highly specialized area of security. It's often referred to as **Technical Surveillance Counter-Measures (TSCM)**. This is not a simple visual inspection; it requires specialized knowledge and tools.

> Here's a breakdown of how it's done properly, from the simple to the highly technical:
> 
> ### 1. Visual Inspection and Environmental Security (First Line of Defense)
> 
> This is the most basic step and something any IT or security professional can perform.
> 
> * **Physical Access Control:** The first and most critical step is to limit physical access to all network cables and equipment. All server rooms, wiring closets, and data centers should be locked and monitored.
> * **Cable Management:** All cables should be organized and secured, ideally in sealed conduits or raceways. Any loose, unorganized, or unlabeled cables should be investigated.
> * **Look for Tampering:** Inspect all cables for any signs of tampering. This includes:
>     * **Strange splices or connectors:** Look for unexpected splices, T-junctions, or any non-standard connectors. An unauthorized tap often involves a splice where the cable's jacket has been cut and wires have been attached.
>     * **Unusual devices:** Look for small, unidentifiable devices attached to the cable or hidden nearby. Modern taps can be the size of a small USB stick or a cigarette pack.
>     * **Discrepancies in cable length:** A physical tap may require a longer-than-expected cable run to connect to the attacker's device.
> 
> ### 2. Using Specialized Tools (The Proper Way)
> 
> A simple visual inspection is often not enough, as many taps are designed to be covert. Proper inspection requires specialized equipment that can analyze the physical and electrical properties of the cable.
> 
> * **Time Domain Reflectometer (TDR):** This is a key tool for detecting physical taps. A TDR works by sending an electrical pulse down the cable and measuring the reflections. Any change in the cable's impedance—caused by a tap, a splice, or a fault—will cause a reflection. The TDR can then calculate the exact distance to that irregularity. This can detect even very small, passive taps that don't disrupt network traffic.
> * **Network Testers and Certifiers:** Professional-grade network testers, such as those made by companies like Fluke Networks, are designed to test the performance and integrity of network cables. They can perform a "wire map" to ensure all pairs are connected correctly, measure signal latency and noise, and check for crosstalk. An active or poorly installed tap can introduce noise or delay that these tools can detect.
> * **Cable Tracing and Mapping:** Tools like tone generators and probes are used to trace a cable from one end to another. This ensures that the cable you think is connecting two devices is not being routed somewhere else.
> 
> ### 3. Network Monitoring and Analysis (The Software Side)
> 
> While this isn't a "physical" inspection, it's a critical part of detecting physical MITM attacks.
> 
> * **Packet Analysis:** Network monitoring tools like Wireshark can be used to analyze network traffic for anomalies. An unauthorized tap or MITM attack might introduce unusual packets, unexpected MAC addresses, or changes in network latency. For example, if a tap is introducing a slight delay, you might see a spike in latency for a specific connection.
> * **Port Monitoring:** On a managed switch, you can monitor the status of all ports. An unauthorized device or a tap might cause a port to drop packets or show unusual traffic patterns.
> 
> ### Key Takeaway
> 
> A proper physical inspection for taps and MITM attacks is not a DIY job. It requires a combination of strong physical security, a systematic visual inspection, and the use of professional, specialized tools like a TDR. For critical infrastructure, this is often performed by trained TSCM specialists who are experts in finding both passive and active surveillance devices.
> This is an excellent question that gets to the heart of modern information security. The short answer is: **Encryption of all traffic is the most critical defense against a physical tap or MITM attack, but it does not "save" the company entirely from a sophisticated adversary.**

> Encryption is your primary line of defense for a simple reason: a physical tap or a MITM device is essentially a listener on the network. Without encryption, they can read every piece of data that passes through the cable. With encryption, they only see gibberish.
> 
> Here is a breakdown of what encryption protects and what it does not protect in this scenario:
> 
> ### What Encryption Protects (The Confidentiality of Your Data)
> 
> * **Data Content:** This is the most important thing. End-to-end encryption, such as that provided by a VPN for all network traffic or TLS/SSL for web Browse (HTTPS), ensures that the actual content of your emails, documents, financial transactions, and internal communications is unreadable to the attacker. A tap or MITM device will only capture the encrypted data stream, which is useless to them without the decryption key.
> * **Credentials and Secrets:** All usernames, passwords, API keys, and other sensitive credentials sent over the network are protected. An attacker cannot capture your login information for a server, your email, or your bank account.
> 
> ### What Encryption Does NOT Protect (The Metadata)
> 
> A sophisticated adversary (a "spy") is interested in more than just the content of your communication. They can still gather a great deal of valuable intelligence from the **metadata**—the information about the communication itself.
> 
> A spy with a physical tap can still see:
> 
> * **Who is communicating with whom:** They can see the source and destination IP addresses. They can infer that "IP A" (an employee's machine) is communicating with "IP B" (a server in the company). They can use DNS queries to see what websites employees are visiting.
> * **The frequency and timing of communication:** They can see when an employee starts work, when they take a break, and when they stop. They can identify patterns of communication between specific teams or individuals.
> * **The volume of data being transferred:** They can see how much data is being sent. A large data transfer might indicate a critical file is being moved, even if they can't see the file's contents. This can provide valuable clues about a company's projects or assets.
> * **Protocol Information:** They can see what type of service is being used (e.g., VPN, SSH, HTTPS). This information can help them build a map of your network infrastructure.
> 
> ### The Human Factor in MITM Attacks
> 
> The effectiveness of encryption against a **MITM** attack also depends on user behavior. A proper MITM attack involves an attacker impersonating a legitimate server.
> 
> * When this happens, your browser or VPN client will likely show a warning about an invalid or mismatched certificate.
> * If an employee is properly trained, they will recognize this warning and immediately stop the connection. This is the human firewall.
> * If an employee, out of carelessness or ignorance, clicks "accept and continue," they have just bypassed the encryption's main security feature and allowed the attacker to decrypt and read their traffic.
> 
> ### Conclusion
> 
> Encrypting all traffic is the single most important countermeasure for an unknown physical threat. It makes it practically impossible for a spy to read the content of your communications.
> 
> However, it is not a complete defense. A spy can still gather valuable intelligence from the metadata. Therefore, a comprehensive security strategy must involve more than just encryption. It should also include:
> * **Network Segmentation:** Limiting where traffic can go.
> * **Network Monitoring:** Looking for unusual traffic patterns.
> * **Employee Training:** Educating users on the importance of security warnings.
> 
> In a situation where physical access cannot be fully controlled, a multi-layered defense is the only way to effectively protect a company's assets. 


### Need proper physical separation setup

Physical separation between departments would help protect sensitive work, improve focus and reduce the risk of shoulder surfing, casual data exposure, and unauthorized listening in sensitive areas. Even low-cost modular or false walls can create visual and acoustic barriers. This will be especially important for Finance, HR, Compliance, lient-specific project teams and cybersecurity team.      
Separation should not block Wi-Fi or disrupt network cabling—plan layout changes (keep infrostructure as much as possible).
Plans shoud make sure pathways and line-of-sight to emergency exits remain clear for safety compliance.

### Cabling inspection and audit to prevent MITM

- InfoSec plans, tolerance, risk acceptance and complience
- is is not clear if windows are dimmed so that it is impossible to spy on the company with optical equipement
- power supply:
    - A tenant-specific generator connection, or
    - An arrangement with building management to tie our circuits into the central generator.


Segment 1: Plan a Midsize Network

📘 Learning Objectives

By the end of this two-week segment, students will be able to:

Define clear network requirements
(Specific) Gather functional, performance, and security requirements for a 50–100-user office network
(Measurable) Document ≥5 distinct requirements
(Achievable) Based on A+/Net+/Sec+ knowledge
(Relevant) Mirrors real-world network design intake
(Time-bound) Within first 3 days
Design a logical topology diagram with VLANs, subnets, and core devices
Develop an IP addressing scheme that maximizes address space efficiency
Produce a hardware & software inventory aligned to requirements
Perform a high-level risk assessment, selecting a guiding framework and justifying it
🛠 Prerequisites & Tools

Knowledge: CompTIA A+, Security+ (all); Network+ OR AI course

Tools:

Diagramming: draw.io, Lucidchart, or similar
Documentation: Google Docs / Word → final PDF
Virtualization platform (for future segments): VirtualBox or VMware Player (Windows/Linux) – VMware Fusion or Parallels Desktop (macOS)
Resources:

Sample network requirements template
Intro to NIST CSF & MITRE ATT&CK overviews
📝 Task List & Estimated Effort

#	Task	Est. Effort
1	Gather Requirements: Interview "stakeholders" (via provided prompts) and list functional, performance, and security needs. [Link]	4 h
2	Choose & Justify a Framework: Read brief overviews of NIST CSF vs. MITRE ATT&CK; select one to guide your design and write a 300-word rationale.	3 h
3	Draft Logical Topology: Using your requirements, sketch a diagram showing core switches, routers, VLANs, and segments.	5 h
4	Design IP Scheme: Allocate subnets (e.g., /24, /26) to each VLAN; document address ranges, gateway IPs, and DHCP scopes in a table.	4 h
5	Compile Inventory: List required hardware (model, spec, qty) and software/services (OS, licensing) mapped to requirements.	3 h
6	Risk Assessment: Identify top 3 network risks (e.g., misconfigurations, unauthorized access) and map each to a control from your chosen framework.	4 h
7	Assemble PDF: Combine diagram, tables, rationale, and assessment into a single PDF (≤10 pages).	3 h
Total estimated: 26 h over two weeks (~13 h/week).

💡 Example reasoning:
- If you choose NIST CSF → You might say: “I chose NIST CSF because this project is about building a secure network from scratch, and CSF provides a structured way to address risks and controls across all stages of the security lifecycle.”
- If you choose MITRE ATT&CK → You might say: “I chose MITRE ATT&CK because the focus of my lab is simulating and detecting real adversary behaviors, and ATT&CK offers a practical mapping of threats to techniques we can replicate.”

🔍 Task Explanations & Industry Rationale

Requirements Gathering

Why it matters: Real network designs begin by understanding business needs. Missing or misconstrued requirements lead to scope creep or insecure designs.

Framework Selection

Why it matters: Frameworks like NIST CSF provide repeatable, audited approaches. Justifying your choice demonstrates critical decision-making.

Topology Diagramming

Why it matters: Visual maps are the lingua franca of network teams; clear diagrams speed up troubleshooting and approvals.

IP Scheme Design

Why it matters: Efficient addressing avoids waste and supports growth. Documenting scopes prevents overlaps in large environments.

Inventory Compilation

Why it matters: Accurate bills of materials inform budgeting and procurement; missing items delay roll-out.

Risk Assessment Mapping

Why it matters: Proactively addressing risks demonstrates security-first thinking and aligns with auditor expectations.

PDF Assembly

Why it matters: A polished deliverable simulates professional proposals and becomes the portfolio artifact recruiters will review.

✅ Submission Checklist

Network requirements document (≥5 items)
Framework rationale (≥300 words)
Logical topology diagram (exported PNG/PDF)
IP addressing table (clear columns: VLAN, subnet, range)
Hardware & software inventory list
Risk assessment mapping table
Single PDF compiled, named Segment1_NetworkPlan_[YourName].pdf
📏 Grading Rubric

Criterion	Excellent (5)	Good (4)	Fair (3)	Poor (1–2)	Weight
Topology Clarity	Crystal-clear, labeled	Mostly clear	Some labels missing	Confusing layout	25%
Framework Justification	Strong, industry-aligned	Good rationale	Limited justification	Lacks relevance	20%
Addressing Accuracy & Efficiency	Optimal, documented	Minor overlaps	Some gaps	Incorrect ranges	20%
Inventory Completeness	All items mapped clearly	Minor omissions	Several items missing	Incomplete	15%
Risk Assessment & Control Mapping	Insightful, well-mapped	Reasonable mapping	Superficial	Missing controls	15%
Documentation Quality & Formatting	Professional, error-free	Minor typos/layout	Noticeable issues	Poor readability	5%
🚀 Extension Ideas (Advanced)

VLAN Segmentation Deep-Dive: Propose guest vs. corporate VLAN ACLs.
High-Availability Design: Add redundant links or VRRP configurations.
Cost Analysis: Research device MSRP and estimate project budget.
Firewall Rule Set: Draft basic ACL/firewall rules for inter-VLAN traffic.
Domain Environment Planning: Include a plan for a domain environment in your network.

Segment 2: Build & Configure Your Virtualized Network

📘 Learning Objectives

By the end of this two-week segment, students will be able to:

Deploy a virtualization environment
(Specific) Install and configure a hypervisor of choice (VirtualBox/VMware Player for Windows/Linux or VMware Fusion/Parallels Desktop for macOS)
(Measurable) Successfully launch ≥3 VMs
(Achievable) Based on provided installation guides
(Relevant) Mirrors common lab setups
(Time-bound) Within first 2 days
Instantiate core network devices as VMs
Create VMs for a router (e.g., pfSense), two switches (Linux bridges or switch VMs), and at least two endpoint servers/PCs
Apply your IP addressing & VLAN schema
Assign each VM to the correct VLAN/subnet per your Segment 1 design
Validate inter-VLAN routing & connectivity
Prove reachability (ping, traceroute) between VLANs and to the Internet VM
Document your environment
Produce a VM inventory table, network diagram update, and configuration summary
🛠 Prerequisites & Tools

Prerequisites: Completed Segment 1 plan & PDF

Virtualization platform (for future segments):

VirtualBox or VMware Player (Windows/Linux) – VMware Fusion or Parallels Desktop (macOS)

OS Images & Software:

Router: pfSense (Community Edition)
Server: Ubuntu Server 22.04 LTS or Windows Server Core
Client: Ubuntu Desktop or Windows 10/11
Utilities:

SSH client (PuTTY, Terminal)
Packet capture: Wireshark
Diagramming (for updates): draw.io, Lucidchart
📝 Task List & Estimated Effort

#	Task	Est. Effort
1	Install Hypervisor & Import ISOs: Set up VirtualBox/VMware, import pfSense & OS images, create base VM templates.	4 h
2	Create Network VMs: Instantiate VMs for router, two switch hosts, and two endpoints; attach to proper virtual networks.	5 h
3	Configure VLANs & Interfaces: On pfSense and Linux switch VMs, define VLAN interfaces matching Segment 1 (e.g., VLAN 10, 20, 30).	4 h
4	Assign IP Addresses: Configure static IPs and DHCP scopes per VLAN; verify leases on client VMs.	4 h
5	Enable Inter-VLAN Routing & NAT: On pfSense, set up LAN interfaces, firewall rules, and NAT for Internet VM.	4 h
6	Test Connectivity: Run ping/traceroute between endpoints, across VLANs, and to an external “Internet” VM; capture traffic in Wireshark.	4 h
7	Document & Screenshot: Update your logical diagram, build a VM inventory table, and capture key config screenshots; assemble into PDF.	5 h
Total estimated: 26 h over two weeks (~13 h/week).

🔍 Task Explanations & Industry Rationale

Hypervisor Setup
Why it matters: In real labs, engineers must stand up virtualization consistently; mastering this ensures reproducible test environments.
VM Deployment
Why it matters: Translating logical designs into VMs builds hands-on skills and parallels cloud-based network functions.
VLAN & Interface Config
Why it matters: VLAN segmentation is fundamental for traffic separation and security zoning in enterprise networks.
IP Assignment & DHCP
Why it matters: Proper addressing and automated IP allocation prevent conflicts and ease device provisioning.
Routing & NAT
Why it matters: Securely routing between segments and enabling external access is core to perimeter defense and network functionality.
Connectivity Testing
Why it matters: Validating configurations and troubleshooting with packet captures demonstrates operational readiness.
Documentation
Why it matters: Clear records of environment and configs support audits, hand-offs, and serve as portfolio artifacts.
✅ Submission Checklist

Virtualization platform installed & base templates created
Router & switch VMs instantiated with correct network adapters
VLAN interfaces configured on pfSense and switch VMs
IP addressing & DHCP scopes applied per VLAN
Inter-VLAN routing & NAT implemented
Connectivity test results (ping/traceroute) with screenshots
Updated network diagram & VM inventory table
Single PDF compiled, named Segment2_VirtualBuild_[YourName].pdf
📏 Grading

## Advansed 
DHCP Failover: Configure secondary DHCP server for high availability.
Syslog Centralization: Deploy a Linux syslog server to collect pfSense logs.
Network Monitoring: Install and configure Zabbix agent on endpoints to track uptime.
Backup & Restore: Script automated VM snapshot backups and restoration drill.

