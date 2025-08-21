# Stage 2

Timeline/Schedule: 3-5 days.

At Stage 2 we continue with deeper network ispection and hardenig. Cable inspection require third-party contractors. At the end of the stage network topology for the Office shall be ready.  At this stage Data seegmentaton and safe procedures should be establshed, major data management roles assigned. At the end of the stage SOC shall be operational. And end-host machines are ready for work.

1. Introduction/Background - Context and purpose
2. Scope of Work - What will and won't be included
3. Tasks/Deliverables - Specific work activities and outcomes
4. Timeline/Schedule - Project phases and milestones
5. Performance Standards - Quality and acceptance criteria
6. Reporting Requirements - Status updates and documentation
7. Resources/Responsibilities - Who provides what
8. Terms and Conditions - Legal and contractual aspects

- understand Data in the company, levels and specification
- Data, Owner, Processor, Custodians. Data handling.
- Data segmentation
- Data procedures and playbooks
- third party physical ispection of the cabling are cables tapped
- deeper inspection and hardening of key network devices, 
- build network topology
- implement SOC Center, configure servers for logs and etc.
- update isntall configure end hosts according to their roles, prioritize these in departments that operate with sensitive data and are commonly in use.
- Contimue with host hardening. make sure that uprotected hosts are not connected to lan

## Change floor, plan for counter measures, 

There is a whole floor between our flors that mean that cables can be tampered there to install taps. It is hard to protect something that you do not controll. At the moment company do not controll the whole floor between our network.

In case if it is impossible (I presume it is) to change floors, use counter measures: Network Segmentation, VPN for Inter-Floor Connectivity, End-to-End Encryption (encryption for all company devices, including laptops and mobile phones), Employee Training, Visitor Management, Regular Audits, Multi-layer Security.

## Cable Infrostructure

This measure is practical for the area where company controll access and can use restrictive methods to prevent tampering.      
Inspecting physical cables for wiretaps and Man-in-the-Middle (MITM) attacks is a highly specialized area of security. It's often referred to as Technical Surveillance Counter-Measures (TSCM).
A proper physical inspection for taps and MITM attacks is not a DIY job. It requires a combination of strong physical security, a systematic visual inspection, and the use of professional, specialized tools like a TDR. For critical infrastructure, this is often performed by trained TSCM specialists who are experts in finding both passive and active surveillance devices.

- Are there a certificates, cable maps?
- All server rooms, wiring closets, and data centers should be locked and monitored.
- Cable Management: All cables should be organized and secured, ideally in sealed conduits or raceways. Any loose, unorganized, or unlabeled cables should be investigated. Watch for access points in common areas.
- Look for Tampering: Inspect all cables for any signs of tampering. This includes:
    - Strange splices or connectors: Look for unexpected splices, T-junctions, or any non-standard connectors. An unauthorized tap often involves a splice where the cable's jacket has been cut and wires have been attached.
    - Unusual devices: Look for small, unidentifiable devices attached to the cable or hidden nearby. Modern taps can be the size of a small USB stick or a cigarette pack.
    - Discrepancies in cable length: A physical tap may require a longer-than-expected cable run to connect to the attacker's device.

### Using Specialized Tools to detect Tap

A simple visual inspection is often not enough, as many taps are designed to be covert. Proper inspection requires specialized equipment that can analyze the physical and electrical properties of the cable.

- Time Domain Reflectometer (TDR) to  detect physical taps.
- Network Testers and Certifiers.
- Cable Tracing and Mapping: Tools like tone generators and probes.


## Wi-Fi

- Mapping of hot spots and their ACLs and autorization setups required.
- Check for admin access, encryption in use, network separation, passwords. Consider to update devices or change them to less restricted areas if they are outdated. Consider replacement. 
- Test / audit if someone can connect to your Wi-Fi from outside even without physical access.

## InfoSec

- Data rating
- Data Management.  Data in use. Data in transfer. Data at rest.
- Data protection
    - appoint DPO (Data Protection Offider), and other officers including: data owner, data controller, data custodian, data processor, data user.
    - write requirements for this roles to properly assigh and manage ACLs for companie's employees
- Physical means of data transportation. Unmanaged USB Access.


    - Inspect network infrastructure including cable management systems, protection mechanisms, unauthorized cables or connection points, wireless access point positioning, device naming conventions, and coverage areas.
    - Assess Wi-Fi security configurations including encryption levels, access point purposes, and network segmentation. Address any inappropriate security levels as immediate priority items.
    - Review existing inventory documentation when available to guide assessment activities and identify gaps.
    - Evaluate physical perimeter security by testing public area access controls, boundary definitions, and containment measures.

