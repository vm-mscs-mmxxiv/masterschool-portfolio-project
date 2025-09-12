# Regulations

## GDPR (EU Data Protection)

Data Management:
- Data residency: EU data must remain in EU or countries with adequacy decisions
- Data minimization: Only collect/store necessary data
- Retention limits: Delete data when no longer needed (varies by purpose)
- Subject rights: Systems must support data export, deletion, correction
- Legal basis: Document why you're processing each data type

Network:
- Encryption in transit/rest required for personal data
- Access controls: Role-based access with audit trails
- Breach notification: 72-hour reporting requirement
- DPO requirement for large-scale processing

Impact Estimate: Medium-High - Significant architectural changes for data handling

### Specific Demands for Storing GDPR Data

GDPR is principles-based rather than prescriptive, but it explicitly mentions encryption as a key technical measure.

- **Lawful Basis for Processing:** You must have a legal reason for collecting and processing personal data (e.g., user consent, a contract, or a legitimate interest).
- **Data Processing Agreement (DPA):** As the Data Controller, you must have a contract with your cloud provider (the Data Processor) that holds them accountable for following your instructions and meeting GDPR's security standards.
- **Privacy by Design and Default:** You must bake privacy and data protection into the very design of your systems and business processes from the start. This includes using measures like:
	- **Encryption:** The GDPR mentions encryption as a recommended measure to protect data both at rest and in transit. While not always mandatory, it is often considered a "state-of-the-art" security practice.
	- **Pseudonymisation:** A technique that replaces personally identifiable information with a pseudonym to make it harder to identify the data subject.
	- **Data Minimisation:** You should only collect and store the personal data that is absolutely necessary for your purpose.
- **Data Sovereignty:** This is a crucial element. The GDPR applies to the personal data of EU residents, regardless of where the data is stored. If you store data outside of the EU, you must ensure it is transferred legally and with appropriate safeguards, such as:
	- **Standard Contractual Clauses (SCCs):** Pre-approved contract clauses that ensure data transferred to non-EU countries is protected to EU standards.
	- **Binding Corporate Rules (BCRs):** An internal code of conduct for multinational companies that want to transfer data between their own entities globally.
- **Breach Notification:** If a data breach occurs, you are required to report it to the relevant data protection authority within 72 hours, and to affected individuals without undue delay if the breach poses a high risk to their rights. However, if the data was encrypted to an appropriate standard and the encryption key was not compromised, you may not have to notify the individuals.

---

## PCI-DSS (Payment Card Industry)

Data Management:
- Never store: CVV, PINs, magnetic stripe data
- Tokenization: Replace card data with tokens
- Data retention: Minimize cardholder data storage
- Secure deletion: Cryptographic erasure when data no longer needed

Network:
- Network segmentation: Isolate card data environment (CDE)
- Firewall rules: Restrict access to CDE
- Encryption: All card data transmissions
- Regular penetration testing and vulnerability scans

Impact Estimate: High - Requires complete network redesign if storing card data, Low if using tokenization

### Specific Demands for Storing PCI-DSS Data

The PCI-DSS has 12 requirements. Here are the most relevant to your question about storage:

- **Protect Stored Cardholder Data (Requirement 3):** This is the most critical requirement for your use case. It mandates that you must render the Primary Account Number (PAN) unreadable wherever it is stored. You can do this using:
    - **Encryption:** Using strong, industry-accepted algorithms (like AES-256).
    - **Tokenization:** Replacing the PAN with a non-sensitive token.
    - **Truncation:** Storing only a portion of the PAN (e.g., the last four digits).
    - **Hashing:** A one-way cryptographic process that renders data unreadable.
- **Encrypt Transmission of Cardholder Data (Requirement 4):** All cardholder data that is sent across open, public networks (like the internet) must be encrypted using strong cryptography (e.g., TLS 1.2 or higher). This applies to data in motion, regardless of its final destination.
- **Strong Key Management:** If you use encryption, you must have a robust system for managing encryption keys, including generating, storing, and rotating them. You cannot store the key on the same server as the encrypted data.
- **Data Minimization:** You must not store sensitive authentication data (e.g., the CVV2 code, full magnetic stripe data, or PIN block) after a transaction is authorized. Additionally, you should only store cardholder data for a legitimate business purpose and for as short a time as possible.
- **Access Controls (Requirement 7):** Access to cardholder data must be restricted on a "need-to-know" basis. Your system must log all access and all activities of those with administrative or root privileges.

---

## HIPAA-like (Healthcare Data)

Data Management:
- PHI encryption: All protected health information encrypted
- Access controls: Minimum necessary access principle
- Audit logs: Track all PHI access and modifications
- Data backup: Secure, encrypted backups required

Network:

- Network isolation: Separate PHI systems from general network
- VPN requirements: Secure remote access only
- Transmission encryption: End-to-end encryption for PHI
- Workstation controls: Automatic logoff, screen locks

Impact Estimate: High - Extensive security controls and network isolation required

### Specific Demands for Storing HIPAA Data

HIPAA doesn't dictate a specific type of encryption or technology, but it requires that the safeguards are "reasonable and appropriate." Here are the key demands:

- **Encryption at Rest and in Transit:** This is a key technical safeguard. All PHI must be encrypted when it is stored on a disk (`at rest`) and when it is being moved between systems (`in transit`). Common standards like AES 256-bit encryption for data at rest and TLS 1.2+ for data in transit are widely accepted.
- **Business Associate Agreement (BAA):** As mentioned, this legal contract is mandatory with any cloud service provider that handles PHI. Major providers like Amazon (AWS), Azure, and Google Cloud offer BAAs for their HIPAA-eligible services.
- **Access Control:** You must have systems in place to limit who can access the data, based on their role. This includes strong authentication (MFA is a best practice) and detailed access logs that can be audited.
- **Audit Logs:** You must log and monitor all access to PHI. These logs must be kept for a minimum of six years and be available for review during a HIPAA audit.
- **Physical Safeguards:** The data centers where the data is stored must have physical security measures in place to prevent unauthorized access.
- **Risk Analysis and Management:** A company must conduct regular risk analyses to identify potential vulnerabilities to PHI and have a plan to mitigate them.
- **Shared Responsibility:** The cloud providers will protect the underlying infrastructure, but you are still responsible for properly configuring your applications, networks, and access controls to ensure your data is secure.

---

## ISO 27001 (Information Security)

Data Management:

- Information classification: Categorize all data by sensitivity
- Asset inventory: Complete inventory of all information assets
- Access management: Formal user access provisioning/deprovisioning
- Change management: Controlled changes to information systems

Network:

- Network access control: 802.1X authentication
- Network monitoring: SIEM implementation
- Incident response: Formal incident management procedures
- Business continuity: Disaster recovery and backup procedures

Impact Estimate: Medium - Framework-based approach, systematic but not prescriptive
