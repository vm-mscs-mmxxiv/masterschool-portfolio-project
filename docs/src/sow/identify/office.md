# Identify - Office

Timeline/Schedule: 2-4 days.

This stage encompasses initial inspection and addresses critical issues related to office physical segmentation, protection, and surveillance systems. Upon completion of Stage, the physical office setup must be finalized with appropriate departmental separation, and office floors must be fully prepared for business operations. Asset inventory and threat management systems must be operational and ready for ongoing security management.

## Scope of Work

- Complete physical security assessment
- Asset inventory
- Uninterrupted power supply need proper implementation (potentially difficult)
- Use inventory management system
- Use threat tracking and vulnerability management system
- Documentation System

## Tasks/Deliverables

### Physical Access

- Conduct physical security assessment through comprehensive site inspection, identifying potential vulnerabilities and non-compliance issues with applicable security frameworks.
- Create detailed floor plan diagrams documenting current office layout, including physical entry points, host machine locations, and network connectivity mapping.
- Document all security findings with photographic evidence and detailed descriptions for remediation tracking.


### Power Supply

> IMPORTANT!!!
> The building itself has a central generator that supports life-safety systems (emergency lighting, elevators, fire control).
> 
> **Central Generator does not power tenant IT infrastructure.** For full operational continuity, we would need either:
> 
> - A tenant-specific generator connection, or
> - An arrangement with building management to tie our circuits into the central generator.


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

## Password Inventory and PKI

It's happened to the best of us. Everyone forgets their password sometimes. A proper system must be used to avoid such situations. Treat passwords as you would highly sensitive data.

The same apply for PKI.

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
