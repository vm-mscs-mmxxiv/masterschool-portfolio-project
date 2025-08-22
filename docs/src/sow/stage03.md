# Stage 3

There is high demand for high business continuity for all departments. During an interview with executives they all stressed upmost importance of almost 100% availability for customers and importance to comply with regulations in regard for logging and surveilance.

In Stage #2 we concentrated more Govern stage of NIST CSF. In this Stage we concentrate more on techical aspects of Data Protection and segmentation. Based on data classifications suitable backup strategies shall be established.

Company requires very low Recovery Time Objective. It implyes geo-diversity and Hot Sites. With budget of 50000$ per year for running the whole business I think it is not possible. Running hot site requires the same ammount of resources while essentially it is live dublication of the company infrostructure. But we can try to implement low rate for RTO and RPO.


- invest in IaC (this would help to quicly establish necessary services when they are required)


## Hybrid Cloud Strategy

A hybrid cloud approach, where your primary services and data remain on-premises and a public cloud is used for specific functions like backups, can be a highly effective strategy for a company with a strong upfront capital expenditure (CapEx) budget and a desire to minimize long-term operational costs (OpEx).

**1. Reduced Upfront Costs:** A full-scale cloud migration is a massive project with high initial costs for re-platforming, training, and data transfer. By keeping the core business on-premises, your upfront `CapEx` is spent on hardware you own, which can feel like a better use of the initial $150-200K budget than paying for a complex migration.

**2. Long-Term Cost Control:**
* **Controlled OpEx:** By limiting your cloud usage to a few services, you have a more predictable and often lower monthly cloud bill. You avoid the high and potentially unpredictable costs associated with compute, data egress, and network traffic for your primary applications.
* **Asset Utilization:** You can leverage your existing hardware and systems, maximizing the value of assets you already own. This makes the $150-200K go further in acquiring new hardware that will last for years.

**3. Compliance Advantages:**
* **Data Sovereignty:** Keeping highly sensitive data (like HIPAA or PCI-DSS data) on-premises can simplify compliance, as you have physical control over the environment. You are only responsible for the parts of the cloud where you store backups, which can make the compliance scope for external audits much smaller and more manageable.
* **Reduced Scope:** Using the cloud only for backups and disaster recovery significantly reduces the scope of your compliance audits. The number of cloud services and the amount of data in the cloud's Cardholder Data Environment (CDE) is minimized.

### The Trade-offs to Consider

While this is a strong strategy, it is not without its challenges:

* **Initial Investment Risk:** Your upfront investment of $150-200K is a sunk cost in hardware that will depreciate over time and require a refresh in a few years.
* **Complexity:** Managing a hybrid environment is inherently more complex than managing a purely cloud-based or on-premises environment. You need expertise in both to handle network connectivity, security policies, and data synchronization between the two environments.
* **Scaling and Innovation:** While a hybrid model can save money on day-to-day operations, it can limit the ability to quickly scale up and down in response to demand. You may also miss out on cloud-native services like AI, machine learning, and advanced analytics that could provide a competitive edge.

-------

Public Data

- public website
- some customer support questions

Data at rest

- encrypt and store
- backup services

Finantial Data

For Finantial Data especially for payment data I would suggest to use tokenezation it would help significantly reduce audit scope (Level 4 vs Level 1 compliance) and help to manage PCI-DSS Data easier. 

- Need a proper BCP (Business Continuity Plan), BCM (Business Continuity Management), Disaster Recovery. Use NIST CSF as a guide line.
- Document Maintenance Schedule and Change Management Plans.
- Need dashboards and reporting systems for top management and for Team Leads. I suggest to develop in-house solution and make it available only through intranet. Differentiate information by role and access level. Need the system with automation. Dashboard must be available from different measurements without need for manual creation. Or use cloud solution?.

Here are the key restrictions and impacts per framework for data management and network:

## **GDPR (EU Data Protection)**

**Data Management:**
- **Data residency**: EU data must remain in EU or countries with adequacy decisions
- **Data minimization**: Only collect/store necessary data
- **Retention limits**: Delete data when no longer needed (varies by purpose)
- **Subject rights**: Systems must support data export, deletion, correction
- **Legal basis**: Document why you're processing each data type

**Network:**
- **Encryption in transit/rest** required for personal data
- **Access controls**: Role-based access with audit trails
- **Breach notification**: 72-hour reporting requirement
- **DPO requirement** for large-scale processing

**Impact Estimate**: **Medium-High** - Significant architectural changes for data handling

---

## **PCI-DSS (Payment Card Industry)**

**Data Management:**
- **Never store**: CVV, PINs, magnetic stripe data
- **Tokenization**: Replace card data with tokens
- **Data retention**: Minimize cardholder data storage
- **Secure deletion**: Cryptographic erasure when data no longer needed

**Network:**
- **Network segmentation**: Isolate card data environment (CDE)
- **Firewall rules**: Restrict access to CDE
- **Encryption**: All card data transmissions
- **Regular penetration testing** and vulnerability scans

**Impact Estimate**: **High** - Requires complete network redesign if storing card data, **Low** if using tokenization

---

## **HIPAA-like (Healthcare Data)**

**Data Management:**
- **PHI encryption**: All protected health information encrypted
- **Access controls**: Minimum necessary access principle
- **Audit logs**: Track all PHI access and modifications
- **Data backup**: Secure, encrypted backups required

**Network:**
- **Network isolation**: Separate PHI systems from general network
- **VPN requirements**: Secure remote access only
- **Transmission encryption**: End-to-end encryption for PHI
- **Workstation controls**: Automatic logoff, screen locks

**Impact Estimate**: **High** - Extensive security controls and network isolation required

---

## **ISO 27001 (Information Security)**

**Data Management:**
- **Information classification**: Categorize all data by sensitivity
- **Asset inventory**: Complete inventory of all information assets
- **Access management**: Formal user access provisioning/deprovisioning
- **Change management**: Controlled changes to information systems

**Network:**
- **Network access control**: 802.1X authentication
- **Network monitoring**: SIEM implementation
- **Incident response**: Formal incident management procedures
- **Business continuity**: Disaster recovery and backup procedures

**Impact Estimate**: **Medium** - Framework-based approach, systematic but not prescriptive

---

## **Combined Impact Assessment**

**Data Architecture Changes:**
- **High impact**: Multiple data classification systems needed
- **Separate environments**: GDPR (EU), PCI (tokenized), HIPAA (isolated), ISO (classified)
- **Complex access controls**: Role-based with framework-specific requirements

**Network Architecture Changes:**
- **Network segmentation**: 3-4 separate security zones minimum
- **Multiple compliance monitoring**: Different logging/monitoring per framework
- **Enhanced encryption**: End-to-end encryption across all systems
- **Redundant controls**: Overlapping security measures

**Operational Overhead:**
- **Multiple audits**: 2-4 annual compliance audits
- **Documentation burden**: Extensive policy and procedure documentation
- **Staff training**: Framework-specific training requirements
- **Technology costs**: Specialized compliance tools and systems

**Overall Project Impact**: **Very High** - Multi-framework compliance typically doubles infrastructure complexity and ongoing operational costs.


## HIPAA

There are very specific and demanding requirements for storing data protected under the Health Insurance Portability and Accountability Act (HIPAA), known as Protected Health Information (PHI).

The core principle is not just encryption; it is a comprehensive system of administrative, physical, and technical safeguards.

### Can You Store Encrypted Data in the Cloud?

**Yes, you can, but with a critical and non-negotiable legal requirement:**

A covered entity (e.g., a hospital or health plan) or a business associate (e.g., a company that handles data on behalf of a covered entity) is responsible for the integrity of PHI. If you use a third-party cloud service to store, transmit, or process PHI, you must have a **Business Associate Agreement (BAA)** signed with the cloud provider.

The BAA is a legal contract that obligates the cloud provider to implement and maintain the necessary safeguards to protect PHI. Without a BAA, you are in violation of HIPAA, regardless of whether the data is encrypted.

The act of the cloud provider holding your encrypted data, even without the encryption key, makes them a business associate under HIPAA.

### Specific Demands for Storing HIPAA Data

HIPAA doesn't dictate a specific type of encryption or technology, but it requires that the safeguards are "reasonable and appropriate." Here are the key demands:

* **Encryption at Rest and in Transit:** This is a key technical safeguard. All PHI must be encrypted when it is stored on a disk (`at rest`) and when it is being moved between systems (`in transit`). Common standards like AES 256-bit encryption for data at rest and TLS 1.2+ for data in transit are widely accepted.
* **Business Associate Agreement (BAA):** As mentioned, this legal contract is mandatory with any cloud service provider that handles PHI. Major providers like Amazon (AWS), Azure, and Google Cloud offer BAAs for their HIPAA-eligible services.
* **Access Control:** You must have systems in place to limit who can access the data, based on their role. This includes strong authentication (MFA is a best practice) and detailed access logs that can be audited.
* **Audit Logs:** You must log and monitor all access to PHI. These logs must be kept for a minimum of six years and be available for review during a HIPAA audit.
* **Physical Safeguards:** The data centers where the data is stored must have physical security measures in place to prevent unauthorized access.
* **Risk Analysis and Management:** A company must conduct regular risk analyses to identify potential vulnerabilities to PHI and have a plan to mitigate them.
* **Shared Responsibility:** The cloud providers will protect the underlying infrastructure, but you are still responsible for properly configuring your applications, networks, and access controls to ensure your data is secure.

## GDPR

While similar in its focus on data protection, the General Data Protection Regulation (GDPR) has a different approach from HIPAA, with a broader scope and a focus on accountability and user rights.

### Can You Store Encrypted Data on Any Cloud?

**Yes, but not without meeting several other legal and technical requirements.**

Unlike HIPAA's strict Business Associate Agreement (BAA) requirement, GDPR focuses on a relationship between a **Data Controller** (the company that determines why and how data is processed) and a **Data Processor** (the cloud provider that processes data on behalf of the controller).

When you use a cloud provider, you must have a contract in place that outlines their obligations to process personal data securely and only on your instructions. This is often called a **Data Processing Agreement (DPA)**. All major cloud providers offer these standard agreements.

Encryption is not a get-out-of-jail-free card. The data, even if encrypted, is still considered "personal data" if it can be used to identify a person. The cloud provider's role as a processor is what triggers GDPR's requirements.

### Specific Demands for Storing GDPR Data

GDPR is principles-based rather than prescriptive, but it explicitly mentions encryption as a key technical measure.

* **Lawful Basis for Processing:** You must have a legal reason for collecting and processing personal data (e.g., user consent, a contract, or a legitimate interest).
* **Data Processing Agreement (DPA):** As the Data Controller, you must have a contract with your cloud provider (the Data Processor) that holds them accountable for following your instructions and meeting GDPR's security standards.
* **Privacy by Design and Default:** You must bake privacy and data protection into the very design of your systems and business processes from the start. This includes using measures like:
    * **Encryption:** The GDPR mentions encryption as a recommended measure to protect data both at rest and in transit. While not always mandatory, it is often considered a "state-of-the-art" security practice.
    * **Pseudonymisation:** A technique that replaces personally identifiable information with a pseudonym to make it harder to identify the data subject.
    * **Data Minimisation:** You should only collect and store the personal data that is absolutely necessary for your purpose.
* **Data Sovereignty:** This is a crucial element. The GDPR applies to the personal data of EU residents, regardless of where the data is stored. If you store data outside of the EU, you must ensure it is transferred legally and with appropriate safeguards, such as:
    * **Standard Contractual Clauses (SCCs):** Pre-approved contract clauses that ensure data transferred to non-EU countries is protected to EU standards.
    * **Binding Corporate Rules (BCRs):** An internal code of conduct for multinational companies that want to transfer data between their own entities globally.
* **Breach Notification:** If a data breach occurs, you are required to report it to the relevant data protection authority within 72 hours, and to affected individuals without undue delay if the breach poses a high risk to their rights. However, if the data was encrypted to an appropriate standard and the encryption key was not compromised, you may not have to notify the individuals.

In short, while encryption is a powerful tool to protect data under GDPR, it is just one component of a much larger set of legal and technical obligations that a company must follow.o

## PCI-DSS

The Payment Card Industry Data Security Standard (PCI-DSS) is far more prescriptive than either HIPAA or GDPR. It's not a law, but a set of security standards mandated by the major credit card brands (Visa, Mastercard, etc.). Any company that accepts, processes, or stores payment card data must comply.

The central concept in PCI-DSS is the **Cardholder Data Environment (CDE)**, which includes all systems and networks that store, process, or transmit cardholder data. The standard requires that you protect this environment, and any data within it, regardless of where it is stored.

### Can You Store Encrypted Data in the Cloud?

**Yes, you can, but the cloud provider and the services you use must be part of your overall PCI-DSS compliance scope.**

Unlike HIPAA's BAA, a cloud provider's PCI compliance is a matter of an **Attestation of Compliance (AOC)**. You are ultimately responsible for ensuring your entire CDE is compliant, and that includes any third-party services you use. This is known as a shared responsibility model.

Your company would need to:
1.  Verify that the cloud provider (Amazon, Azure, or Google) has a current AOC as a Level 1 service provider. All major cloud providers do.
2.  Use only the cloud services that are included in the provider's AOC.
3.  Implement your own security controls (e.g., firewall rules, access controls, encryption key management) to protect your data, as the cloud provider only secures their underlying infrastructure.

### Specific Demands for Storing PCI-DSS Data

The PCI-DSS has 12 requirements. Here are the most relevant to your question about storage:

* **Protect Stored Cardholder Data (Requirement 3):** This is the most critical requirement for your use case. It mandates that you must render the Primary Account Number (PAN) unreadable wherever it is stored. You can do this using:
    * **Encryption:** Using strong, industry-accepted algorithms (like AES-256).
    * **Tokenization:** Replacing the PAN with a non-sensitive token.
    * **Truncation:** Storing only a portion of the PAN (e.g., the last four digits).
    * **Hashing:** A one-way cryptographic process that renders data unreadable.
* **Encrypt Transmission of Cardholder Data (Requirement 4):** All cardholder data that is sent across open, public networks (like the internet) must be encrypted using strong cryptography (e.g., TLS 1.2 or higher). This applies to data in motion, regardless of its final destination.
* **Strong Key Management:** If you use encryption, you must have a robust system for managing encryption keys, including generating, storing, and rotating them. You cannot store the key on the same server as the encrypted data.
* **Data Minimization:** You must not store sensitive authentication data (e.g., the CVV2 code, full magnetic stripe data, or PIN block) after a transaction is authorized. Additionally, you should only store cardholder data for a legitimate business purpose and for as short a time as possible.
* **Access Controls (Requirement 7):** Access to cardholder data must be restricted on a "need-to-know" basis. Your system must log all access and all activities of those with administrative or root privileges.

In essence, with PCI-DSS, storing encrypted data in the cloud is permissible, but it's only one piece of a much larger, highly regulated puzzle. Your company remains fully accountable for compliance, even when using a third-party cloud provider.
