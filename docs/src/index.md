# Masterschool Capstone Project

## Objective

I have to act as if I'm a Cybersecurity Engineer tasked to create, monitor, run midsize company security.
As part of the assignment there was a simulated chat with hihgly ranked executives of the company. General conclusions of the companie's specifications are as following.

### Company objectives and structure

The company is middle size consulting company. Specializing in providing business consulting, data-driven strategy, and digital transformation support to mid-size and enterprise clients. Company have publicly available as well as highly secure data. Data privacy vary depending on the client's needs.

Companie's Operations are subject to heavy regulations. GDPR, HIPAA, ISO 27001, PCI-DSS.     
The Company is subject to industry audit and certifications.

The companie's highly ranked executives have quite high Risk Appetite. But ask for high level of security operations. Companie's CEO and CFO have approved that if it is practical and required they are ready to invest in security operations.

With open minded approach to AI and more 'innovative' solutions high risk appetite and tolerance could lead to finantial and reputation loses.

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

Dayly activities of office stuff include this services: Email, file sharing, inventory management, CRM tools, and communication platforms like Slack or Teams.  HR systems (payroll, benefits, onboarding portals), video. Logging, and controls, compliance systems, audit trails, and secure document repositories.

### Office Inventory

Servers, Backup servers, computers, mobile, smart boards, video conferencing systems, and digital signage, Payment terminals, point-of-sale. IoT devices for building management (HVAC, access control, lighting). Specialized testing equipment in R&D (research and development). Access control equipment, HVAC (Heating, Ventilation, and Air Conditioning). Self-service kiosks, security cameras.

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

Currently, there is no dedicated generator for our suite.
UPS (Uninterruptible Power Supplies) are installed for critical systems—including the server room, networking equipment, and key workstations in **Finance, HR, and Compliance**. They provide short-term power during outages to allow for safe shutdown or switchover.

* Unauthorized access to kiosks could create HR or privacy issues.


### Office Networking

Don't assume we have wiring everywhere—we may need to retrofit. Employees need uninterrupted access to systems regardless of floor or location.

On-site staff need stable LAN and Wi-Fi, while remote teams rely on cloud tools, VPNs, and video calls
Remote users: financial, sales, IT. Often connect from public networks.
Guests connect from conference rooms or lobby areas. Limit guests to internet-only access.

* network segregation
* VPN access
* Sudden spikes occur
* Keep meeting rooms smart boards, video conferencing systems, and digital signage isolated from sensitive business systems and must be always available.
* Downtime should not expose data or cause loss of in-progress work

## Data

- Client contracts, proposals, and strategic plans
- Financial records, banking details, and payment card data
- Operational blueprints, supplier contracts, and project schedules
- Employee personal data (SSNs, addresses, health benefit info, so PII and SPII) stored in HRIS and payroll systems.
- Compliance audit logs, access control records, and incident reports — stored in secured, tamper-evident systems.
* Redundancy for logging, several levels of logging with different sensitivity.
* data transfer regulations.
* Encrypted storage and transmission, retention policies aligned with regulations.

## Business Continuity

These need to be continuously available to both office and remote staff. Any disruption longer than a few minutes can cascade into delays across departments, especially in client-facing functions. CEO expects 99.9% uptime minimum. Video calls, screen sharing, and large file uploads/downloads should work seamlessly.
finantial can tolerate brief slowness, but not downtime. HR also said that: Consistency matters more than speed. : Access to compliance systems, audit trails, and secure document repositories must be uninterrupted. Delays during an audit could lead to penalties.

* Onboarding new hires remotely must be seamless regardless of location.
* Systems tied to sales, proposals, and client communications must have near-continuous availability.
* Accounting and ERP ( Enterprise Resource Planning) access must be resilient to network issues. CFO
* Operational data should not be lost during interruptions. That is true to for all departments.


## Finantial Operations

- Payment terminals for event transactions and occasional point-of-sale 
- There is self-serving selling equipment for employees. I suggest it is responsibility of the vendor. Network is absolutely air-gapped from the office.


## Cybersecurity

- Accurate tracking of who connects, when, and from where — for all categories (staff, contractors, guests).
-  Real-time identity verification for remote logins.
- Critical systems like access control need uptime even during outages.

* Physical access to employee files (both digital and printed) is tightly controlled. Sensitive areas are locked, and file cabinets are restricted.

* Ensure that the cabling layout and switch placements don’t expose us to tampering (e.g., unsecured patch panels or wall jacks in public areas).
* Video or access log loss during an incident could jeopardize an investigation or audit.
* The server room is compliant, but other closets or impromptu setups wouldn’t be.

