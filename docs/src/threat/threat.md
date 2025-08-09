# Threats

During our discussion with highly ranced executives there were areas that I didn't get properly so I presume to assume that if I was not told about thing specifically it is not protected, documented or managed. This is a simulation and it would require a lot of time to run the Chat to properly 'interrogate' him for details. 

## Documentatino and training

 - Create, update available to employees cyber security related documentation. Plan to run trainings and seminars. This documentation is separated by level of access. Not all can be available to everyone. Use this documentation as a specifications.
- Appoint someone withing IT Support Team to be responsible for this documentation. 
- Ask for CFO for fundings for IT Team to create this documentation, don't forget we need to serve it from somewhere.
- Write playbooks to different teams. Make sure that employees know how to react to different attacks and threats. At least they shall know what not to do and who to contact for help.
- Start creating IaC.
- Inventory of office infrostructure, devices and software in use.
- After the Inventory is ready document attack vectors and threats.
- Need a proper BCP (Business Continuity Plan), BCM (Business Continuity Management), Disaster Recovery. Use NIST CSF as a guide line.
- Document Maintenance Schedule and Change Management Plans.

## Risks, Threats, Comlyance

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

## Physical Department Separation 

Physical separation between departments would help protect sensitive work, improve focus and reduce the risk of shoulder surfing, casual data exposure, and unauthorized listening in sensitive areas. Even low-cost modular or false walls can create visual and acoustic barriers. This will be especially important for Finance, HR, Compliance, lient-specific project teams and cybersecurity team.       
Is is not clear if windows are dimmed so that it is impossible to spy on the company with optical equipement.     
There is video survelance in the office. What and who can see. It is an attack vector.      
Separation should not block Wi-Fi or disrupt network cabling—plan layout changes (keep infrostructure as much as possible).      
Plans shoud make sure pathways and line-of-sight to emergency exits remain clear for safety compliance.     

## Business Continuity

There is high demand for high business continuity for all departments. During an interview with executives they all stressed upmost importance of almost 100% availability for customers and importance to comply with regulations in regard for logging and surveilance.

### Power Supply

The building itself has a central generator that supports life-safety systems (emergency lighting, elevators, fire control).

**It does not power tenant IT infrastructure.** For full operational continuity, we would need either:

- A tenant-specific generator connection, or
- An arrangement with building management to tie our circuits into the central generator.
