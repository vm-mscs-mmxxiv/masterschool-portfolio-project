# Protect - Data

Data segmentation protocols and secure data handling procedures shall be established during this phase, with major data management roles formally assigned to appropriate personnel. 

Note: It's difficult to judge things you don't have experience with. Reading articles didn't help. Some people are in favor of clouds, while others are not. Plus, I have to keep in mind that the CFO has limited funds to implement full-scale financial services.

It is practical to  store public, internal, and partially restricted data in the cloud. I will protect the internal and restricted data with encryption and use geo-diversification for backup.
I also have to consider the economic impact of a data breach or loss.

## Questions

The task has become too complex. It needs to be broken down into smaller pieces.   Place the questions and answer them one by one. Otherwise, I feel overwhelmed. 

- Network segmentation and zones.
- What approach to use for cloud storages?
- Outsource regulated data processing?

## Scope of Work

- Define data protection strategies and classification levels
- Established secure data management procedures
- Establish procedures and implemented data segmentation controls
- Implement Data Assets Inventory (levels of sensibility, geo-diversity, network segmentation)
- Implement Data Rating
- Assign Data Protection Officer (DPO)
- Assigned data management roles and responsibilities
- Access provision / deprovision
- Data Protection Impact Assessments (DPIA) for high-risk processing
- Vendor / processor agreements required
- Establish data processing and transfer protocols
- Create data management baseline requirements
- Support network topology and role configuration planning
- Implement records of processing activities (logging)
- Implement proper backup systems according to required RPO
- 3-2-1 Rule: Maintain at least 3 copies of your data, on 2 different types of media, with 1 copy stored off-site.
- Plan for internal and external audit
- Maintain policy and procedure documentation
- Document data access controls and user permissions
- User / employee training sessions

## Tasks


### Classification Levels

The company uses the following classification levels: Public, Internal, Restricted, and Secret. These levels vary by department.

#### Public

Description: Data that is not sensitive and can be freely shared with anyone, both inside and outside the company.                  
Usage: Press releases, marketing materials, public-facing website content, job postings.          
Security: Requires minimal protection.           
Departments: HR, Sales

#### Internal (Confidential)

Description: Data that is meant for internal use only. Unauthorized disclosure would likely not cause significant harm to the company but should not be released publicly.            
Usage: Internal memos, org charts, internal company policies, general documents, inside department data..            
Security: Requires standard, baseline security controls.           
Departmenets: All

#### Restricted (Highly Confidential)

Description: Data that is highly sensitive and is only accessible to a limited, specific group of people. Unauthorized disclosure could cause significant financial or reputational damage.           
Usage: Employee personal information (PII), customer data, financial reports, trade secrets, merger and acquisition details.              
Security: Requires strong access controls, encryption, and strict monitoring. This is where most compliance regulations (like GDPR) apply.              
Departments: HR, Finantial, IT, Sales

#### Secret (Top Secret)
Description: The highest level of classification. Data that, if disclosed, could cause severe harm to the company, its clients, or its operations. Access is on a strict need-to-know basis.               
Usage: Patented formulas, sensitive source code, unreleased financial earnings, strategic business plans, reports to executives.                   
Security: Requires the most rigorous security controls, including advanced encryption, multi-factor authentication, and audited access.                 
Departments: IT, Finantial, Sales.

### Access Controls and Least Privilege

Ensure that employees and systems only have access to the data they absolutely need to perform their jobs. Implement role-based access control (RBAC) and remove permissions from users who no longer require them.

### Data Encryption

Protect data both when it's stored and when it's being transmitted.
Use full disk encryption on servers and workstations. Encrypt sensitive data in databases and file systems.
For data in transit; enforce the use of TLS/SSL for all network communication (e.g., HTTPS for websites, VPNs for remote access).
