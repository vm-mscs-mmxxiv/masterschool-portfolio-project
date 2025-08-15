# General Operations

Critical, client-facing apps (**CRM[^1], proposal tools, video conferencing**) must recover within 15 minutes to avoid lost deals or missed opportunities.
Recovery should be seamless enough that clients barely notice disruption.
No partial data loss; restore to last known consistent state.
The longer downtime lasts, the greater the risk of clients turning to competitors.

[CFO – Jordan]
Financial systems should be operational again within 30 minutes, especially during billing cycles.
Ensure restored systems process any backlog quickly.
Recovery must preserve transactional integrity to avoid financial discrepancies.
Extended outages increase the risk of missed payment deadlines.

[COO – Casey]
Operational tools must be up and running within 20 minutes to prevent project schedule slippage. What Operational tools are in use?
Prioritize restoring collaboration and task management systems before less critical tools.
Must verify no malicious code remains before bringing systems online. Restore from last know good snapshot.
Restarting systems without confirming integrity could cause repeat outages.

[HR Director – Riley]
HRIS and payroll should recover within 1 hour during normal periods, faster during payroll runs. How fast?
Minimal downtime for onboarding systems when sessions are active.
Post-incident, ensure user accounts and permissions are still correct.
Restoring incorrect HR data could cause payroll or benefits errors. Need good clean system.

[Compliance Officer – Morgan]
Compliance-related logging and audit systems must recover within 5 minutes to maintain continuous evidence chains.
Backup systems should automatically take over to prevent data gaps. I need mechanism to detect logging system failure.
Full integrity verification before reconnecting to live environment. How would I check integrity?
Missing even a few minutes of compliance data can result in regulatory violations.

## Change Management, peak times

### General operations

Spikes occur **Monday mornings** (client kickoffs, proposal submissions) and **Thursday afternoons** (closing deals before week’s end). General operations  require maximum system responsiveness for sales tools and video calls. Ensure no slowdown that might push staff to use unsanctioned tools.

### Finantial

Financial activity spikes at **month-end and quarter-end** for reporting, invoicing, and reconciliations. Weekly, **Fridays** often have heavier payment traffic. Accounting platforms must handle larger data loads without lag.

### In-house operations

Operational load peaks **Tuesday–Thursday** when most project work is underway, and during major product releases. Internal collaboration tools must scale to handle surge in file transfers and communications. System performance shall not drop under load.

### HR Department

HR activity spikes at **start and end of pay periods**, often **mid-week for onboarding sessions**. Applicant tracking and HRIS must remain accessible during group onboarding sessions. Maintain secure access for multiple simultaneous HR logins.

### IT and Support

Compliance review activity increases **week before audits** or regulatory filing deadlines. Must maintain stable connections for large document uploads and remote auditor access. Higher monitoring of traffic during spikes to detect anomalies. Audit readiness can be compromised if systems slow down during preparation.

## Finantial Operations

- Payment terminals for event transactions and occasional point-of-sale 
- There is self-serving selling equipment for employees. I suggest it is responsibility of the vendor. Network is absolutely air-gapped from the office.

---

[^1]: CRM stands for Customer Relationship Management. CRM tools are software solutions designed to help businesses manage and analyze their interactions with customers and potential customers. Their primary purpose is to streamline processes and improve business relationships, ultimately driving sales and loyalty.

