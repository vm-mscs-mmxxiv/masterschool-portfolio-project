# Masterschool Capstone Project

## Objective

I have to act as if I'm a Cybersecurity Engineer tasked to create, monitor, run midsize company security.
As part of the assignment there was a simulated chat with hihgly ranked executives of the company. General conclusions of the companie's specifications are as following.

### Company objectives and structure

The company is middle size consulting company. Specializing in providing business consulting, data-driven strategy, and digital transformation support to mid-size and enterprise clients. Company have publicly available as well as highly secure data. Data privacy vary depending on the client's needs.

Companie's Operations are subject to heavy regulations. GDPR, HIPAA, ISO 27001, PCI-DSS.     
The Company is subject to industry audit and certifications.

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

- Need proper physical setup.
- cabling inspection and audit to prevent MITM.
- is is not clear if windows are dimmed so that it is impossible to spy on the company with optical equipement
- There is a whole floor between our flors that mean that cables can be tampered there to install taps.

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

