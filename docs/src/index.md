# Masterschool Capstone Project

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

