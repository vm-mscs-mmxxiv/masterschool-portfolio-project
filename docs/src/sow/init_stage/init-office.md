# Initial Stage -  Office

Timeline/Schedule: 2-4 days.

This stage encompasses initial inspection and addresses critical issues related to office physical segmentation, protection, and surveillance systems. Upon completion of Stage, the physical office setup must be finalized with appropriate departmental separation, and office floors must be fully prepared for business operations. Initial network topology and cabling infrastructure must be completed and documented. Asset inventory and threat management systems must be operational and ready for ongoing security management.

## Scope of Work

- Complete physical security assessment
- Asset inventory
- Implemented office segmentation solutions
- nNtwork Topology
- Secured surveillance system configuration
- Implement administrative measures
- Documented network topology and infrastructure
- Operational inventory management system
- Threat tracking and vulnerability management system
- Documentation System

## Tasks/Deliverables

### Power Supply

> IMPORTANT!!!
> The building itself has a central generator that supports life-safety systems (emergency lighting, elevators, fire control).
> 
> **Central Generator does not power tenant IT infrastructure.** For full operational continuity, we would need either:
> 
> - A tenant-specific generator connection, or
> - An arrangement with building management to tie our circuits into the central generator.

### Physical Departmental Security

Office Segmentation and Access Control Review: Evaluate physical separation of different business functions and security zones within the office environment. Document access restrictions between departments, visitor access protocols, and isolation of sensitive areas (server rooms, executive offices, HR areas). Assess effectiveness of physical barriers, badge/key card systems, and identification of unauthorized personnel in restricted zones.

- Conduct physical security assessment through comprehensive site inspection, identifying potential vulnerabilities and non-compliance issues with applicable security frameworks.
- Create detailed floor plan diagrams documenting current office layout, including physical entry points, host machine locations, and network connectivity mapping.
- Document all security findings with photographic evidence and detailed descriptions for remediation tracking.
- Address security findings

**Visitors and Contractors Access Control Policy:**

Access to the office for all non-employees, including visitors and contractors, must adhere to the company's Access Control Policy to ensure the physical and logical security of our premises and data.

**1. Visitor Access:**

- **Permitted Areas:** Visitor access is strictly limited to the lobby and designated meeting rooms.
- **Procedure:** All visitors are required to sign in at the front desk and will be provided with a visitor badge, which must be worn at all times.
- **Escort:** Visitors are not permitted to move freely and must be escorted by an employee at all times while within the office premises.
- **Network Access:** Visitors are only allowed to connect to a designated, segregated guest network. Access to the corporate network is strictly prohibited.
-

**2. Contractor Access:**

- **Access Level:** Contractor access will be provisioned on a **least privilege** basis, granting them only the minimum access necessary to fulfill their contractual obligations.
- **Governing Documents:** Access for contractors is governed by a formal contract, which must include a signed Business Associate Agreement (BAA) for those handling sensitive data. This contract dictates the specific access levels, permitted systems, and data handling procedures.
- **Identification:** Contractors must be identified through a pre-assigned badge or credential, which should be distinguishable from employee credentials.
- **Physical and Logical Boundaries:** Contractor access to sensitive areas and systems will be restricted based on their role and documented in their contract. Access to the core corporate network, administrative systems, and confidential data is prohibited unless explicitly required and authorized. All contractor activity will be monitored and audited as required by security policy.

Physical separation between departments provides essential protection for sensitive work by improving focus and reducing risks of shoulder surfing, inadvertent data exposure, and unauthorized eavesdropping in confidential areas. Cost-effective solutions such as modular partitions or demountable walls can create effective visual and acoustic barriers. This separation is particularly critical for Finance, Human Resources, Compliance, client-specific project teams, and the cybersecurity team.

**Specific attention must be payed to:**

- **Highly sesible area access:** Areas containing servers, network devices, financial data processing systems, or HIPAA-like protected data must have enhanced protection against unauthorized access. Access to these areas shall require at least two different authentication factors, such as a password and a security key.
- **Visitors and Lobby Area:** Visitors are not allowed to walk into the Office Areas. Any devices in this area shall be outside of companieses network. Essentially Visitors and Lobby are confined areas totally sand-boxed from the Office.
- **Window Security:** Assess whether existing windows provide adequate visual protection against external surveillance using optical equipment. Consider privacy films or treatments where necessary to prevent external observation of sensitive work areas.
- **Infrastructure Considerations:** Physical modifications must not interfere with Wi-Fi coverage or disrupt existing network cabling. Layout changes should preserve existing infrastructure wherever possible to minimize implementation costs and downtime.
- **Safety Compliance:** All separation plans must maintain clear pathways and unobstructed line-of-sight to emergency exits to ensure compliance with fire safety and building codes.
- **Video Surveillance Assessment:** Document all surveillance camera locations, coverage areas, recording capabilities, and access controls. Identify who has administrative access to camera systems, viewing permissions, and data retention policies. Assess potential security vulnerabilities including camera network isolation, default credentials, firmware currency, and physical tampering protection. Evaluate surveillance systems as potential attack vectors for network infiltration.
- **Implement administrative measures:** Clearly designate restricted areas within the office at all times. Access to these areas must be controlled and visibly marked, and strict sanctions should be enforced in cases of non-compliance.

### Digital Inventory Systems

Effective asset management requires a comprehensive inventory system to track device locations, user access controls, system configurations, software installations, and operational status across all office equipment and infrastructure. For the company of this size on-premise solution is enough. Key points to keep in mind for the System:

- On-premise solutions
- Role-based access controls
- Integration with vulnerability management tools
- Multi-factor authentication for access
- Encryption at rest and in transit
- Regular backups (automated)
- Access logging and monitoring
- Network segmentation from general corporate network

### Vulnerability Management Systems

Effective cybersecurity requires a centralized vulnerability management system to track security weaknesses, assess risk levels, monitor remediation progress, assign accountability, and maintain compliance with security frameworks.

Key point for the Vulnerability Register:

- Often separate from general IT asset management
- Higher classification level due to sensitive security data
- Real-time vulnerability feeds and threat intelligence integration
- Stricter network isolation - Often air-gapped or on separate security network
- Higher encryption standards - Contains exploitable vulnerability details
- Enhanced logging - Every access tracked for compliance
- Role-based access (view-only for most, edit for security team)
- Audit trails for all changes
- Secure backup procedures

### Documentation System

A comprehensive documentation management system is essential for organizational knowledge management. The company requires an employee wiki platform supporting multiple operational areas including standard operating procedures, incident response playbooks, training materials, and departmental workflows.

The system must implement role-based access controls to ensure appropriate information segregation between departments and security clearance levels. For sensitive documentation containing security procedures, financial data, or confidential operational details, the system must be air-gapped from external network access to prevent unauthorized disclosure or cyber attacks.

**System Requirements:**

- Multi-topic wiki platform for operational documentation
- Role-based access control implementation
- Air-gapped deployment for sensitive content
- Support for playbooks and standard operating procedures
- Training material repository and version control
- Departmental workflow documentation capabilities

**Security Considerations:**

- Cloud solutions for general business documentation
- On-premise/air-gapped for sensitive security content
- Network isolation for classified documentation
- User authentication and authorization controls
- Audit logging for document access and modifications
- Regular backup procedures for business continuity
- Document classification and handling protocols

## Resources/Responsibilities

- **Power Supply:** Cooperation between building management and COO is required
- **Video Surveillance Assessment:** Cooperation between building management and COO
- **Physical security, office segmentation:** Third party construction contractors, CFO (will require funding to buy materials and pay contractor)
- **Documented network topology and infrastructure:** IT Support and Security Team
- **Operational inventory management system:** IT Support and Security Team
- **Threat tracking and vulnerability management system:** IT Support and Security Team
