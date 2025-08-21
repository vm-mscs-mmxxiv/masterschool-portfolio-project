# Initial Recommendations

During our discussions with senior executives, several areas lacked clarity regarding current security measures. Where specific protections, documentation, or management processes were not explicitly mentioned, I have assumed they may not be fully implemented or documented. While this assessment is based on limited information and would require extensive investigation to validate completely, the project timeline necessitates working with available data.
Even if certain security arrangements exist but were not discussed during our meetings, documenting and formalizing these processes remains valuable. Following a thorough analysis of the stated requirements, I have developed conclusions regarding the company's organizational structure, configuration, and network architecture.

In the Baseline Analysisi section there is simple description of the current state and some expectancy that senior executives wish to achieve. I decided to split this section by timeline. The company operated before there are some setup and operations that may need to be addressed more than others.

## Initial Stage

This stage encompasses initial inspection and addresses critical issues related to office physical segmentation, protection, and surveillance systems. Upon completion of Stage, the physical office setup must be finalized with appropriate departmental separation, and office floors must be fully prepared for business operations. Initial network topology and cabling infrastructure must be completed and documented. Asset inventory and threat management systems must be operational and ready for ongoing security management.

Scope of Work:

- Complete physical security assessment
- Implemented office segmentation solutions
- Secured surveillance system configuration
- Documented network topology and infrastructure
- Operational inventory management system
- Active threat tracking and vulnerability management system

Timeline/Schedule: 2-3 days.



> Power Supply: IMPORTANT!!!
> The building itself has a central generator that supports life-safety systems (emergency lighting, elevators, fire control).
> 
> **It does not power tenant IT infrastructure.** For full operational continuity, we would need either:
> 
> - A tenant-specific generator connection, or
> - An arrangement with building management to tie our circuits into the central generator.

### Physical Departmental Security

Office Segmentation and Access Control Review: Evaluate physical separation of different business functions and security zones within the office environment. Document access restrictions between departments, visitor access protocols, and isolation of sensitive areas (server rooms, executive offices, HR areas). Assess effectiveness of physical barriers, badge/key card systems, and identification of unauthorized personnel in restricted zones.

- Conduct physical security assessment through comprehensive site inspection, identifying potential vulnerabilities and non-compliance issues with applicable security frameworks.
- Create detailed floor plan diagrams documenting current office layout, including physical entry points, host machine locations, and network connectivity mapping.
- Document all security findings with photographic evidence and detailed descriptions for remediation tracking.
- Address security findings

Physical separation between departments provides essential protection for sensitive work by improving focus and reducing risks of shoulder surfing, inadvertent data exposure, and unauthorized eavesdropping in confidential areas. Cost-effective solutions such as modular partitions or demountable walls can create effective visual and acoustic barriers. This separation is particularly critical for Finance, Human Resources, Compliance, client-specific project teams, and the cybersecurity team.

Specific attention must be payed to:

- **Window Security:** Assess whether existing windows provide adequate visual protection against external surveillance using optical equipment. Consider privacy films or treatments where necessary to prevent external observation of sensitive work areas.
- **Infrastructure Considerations:** Physical modifications must not interfere with Wi-Fi coverage or disrupt existing network cabling. Layout changes should preserve existing infrastructure wherever possible to minimize implementation costs and downtime.
- **Safety Compliance:** All separation plans must maintain clear pathways and unobstructed line-of-sight to emergency exits to ensure compliance with fire safety and building codes.
- **Video Surveillance Assessment:** Document all surveillance camera locations, coverage areas, recording capabilities, and access controls. Identify who has administrative access to camera systems, viewing permissions, and data retention policies. Assess potential security vulnerabilities including camera network isolation, default credentials, firmware currency, and physical tampering protection. Evaluate surveillance systems as potential attack vectors for network infiltration.

### Digital Inventory Systems

For the company of this size on-premise solution is enough. Key points to keep in mind for the System:

- On-premise solutions
- Role-based access controls
- Integration with vulnerability management tools
- Multi-factor authentication for access
- Encryption at rest and in transit
- Regular backups (automated)
- Access logging and monitoring
- Network segmentation from general corporate network

### Vulnerability Management Systems

The company would require proper Risk Register to properly address Vulnerability Lifecycle Management. Here are key point for the Register:

- Often separate from general IT asset management
- Higher classification level due to sensitive security data
- Real-time vulnerability feeds and threat intelligence integration
- Stricter network isolation - Often air-gapped or on separate security network
- Higher encryption standards - Contains exploitable vulnerability details
- Enhanced logging - Every access tracked for compliance
- Role-based access (view-only for most, edit for security team)
- Audit trails for all changes
- Secure backup procedures


    - Inspect network infrastructure including cable management systems, protection mechanisms, unauthorized cables or connection points, wireless access point positioning, device naming conventions, and coverage areas.
    - Assess Wi-Fi security configurations including encryption levels, access point purposes, and network segmentation. Address any inappropriate security levels as immediate priority items.
    - Review existing inventory documentation when available to guide assessment activities and identify gaps.
    - Evaluate physical perimeter security by testing public area access controls, boundary definitions, and containment measures.


1. Introduction/Background - Context and purpose
2. Scope of Work - What will and won't be included
3. Tasks/Deliverables - Specific work activities and outcomes
4. Timeline/Schedule - Project phases and milestones
5. Performance Standards - Quality and acceptance criteria
6. Reporting Requirements - Status updates and documentation
7. Resources/Responsibilities - Who provides what
8. Terms and Conditions - Legal and contractual aspects

## Documentation and Training

 - Create, update available to employees cyber security related documentation. Plan to run trainings and seminars. This documentation is separated by level of access. Not all can be available to everyone. Use this documentation as a specifications.
- Appoint someone withing IT Support Team to be responsible for this documentation. 
- Ask for CFO for fundings for IT Team to create this documentation, don't forget we need to serve it from somewhere.
- Write playbooks to different teams. Make sure that employees know how to react to different attacks and threats. At least they shall know what not to do and who to contact for help.
- Start creating IaC.
- Inventory of office infrostructure, devices and software in use.
- After the Inventory is ready document attack vectors and threats.
- Need a proper BCP (Business Continuity Plan), BCM (Business Continuity Management), Disaster Recovery. Use NIST CSF as a guide line.
- Document Maintenance Schedule and Change Management Plans.
- Need dashboards and reporting systems for top management and for Team Leads. I suggest to develop in-house solution and make it available only through intranet. Differentiate information by role and access level. Need the system with automation. Dashboard must be available from different measurements without need for manual creation. Or use cloud solution?.

## Risks, Threats, Comliance

Below is a list of threats / suggestions that I would purpose to executives in follow up meeting. Some I would investigate by myself some probably would stay in this list.

- After proper Inventory is ready. Protect and mitigate.
- Create areas where all non-employees are allowed. Make sure that unauthorized person can access other areas in the Office.
- Restrict physical access to secured areas, use tamper-evident measures to inspect unauthorized access to cables. Inspect this areas for unautorized access regularly.
- InfoSec plans, tolerance, risk acceptance and complience
- Need security team SOC.
- Key and password escrow
- Email services by third party organization.
- Need more planning on BYOD, MDM, Cloud Services
- Change Advisory Board (CAB) need proper assignment

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

### Using Specialized Tools

A simple visual inspection is often not enough, as many taps are designed to be covert. Proper inspection requires specialized equipment that can analyze the physical and electrical properties of the cable.

- Time Domain Reflectometer (TDR) to  detect physical taps.
- Network Testers and Certifiers.
- Cable Tracing and Mapping: Tools like tone generators and probes.

### Network Monitoring and Analysis

- Packet Analysis: Network monitoring tools like Wireshark.
- Port Monitoring: On a managed switch, you can monitor the status of all ports. Manually shutdown all unused ports on network devices.
- Map and monitor Wi-Fi access points. (perhaps need more on this)

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


## Business Continuity

There is high demand for high business continuity for all departments. During an interview with executives they all stressed upmost importance of almost 100% availability for customers and importance to comply with regulations in regard for logging and surveilance.

