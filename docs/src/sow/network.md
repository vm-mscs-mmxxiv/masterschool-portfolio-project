# Stage 3

There is high demand for high business continuity for all departments. During an interview with executives they all stressed upmost importance of almost 100% availability for customers and importance to comply with regulations in regard for logging and surveilance.

In Stage #2 we concentrated more Govern stage of NIST CSF. In this Stage we concentrate more on techical aspects of Data Protection and segmentation. Based on data classifications suitable backup strategies shall be established.

Company requires very low Recovery Time Objective. It implyes geo-diversity and Hot Sites. With budget of 50000$ per year for running the whole business I think it is not possible. Running hot site requires the same ammount of resources while essentially it is live dublication of the company infrostructure. But we can try to implement low rate for RTO and RPO.


- invest in IaC (this would help to quicly establish necessary services when they are required)

## Finantial Data

For Finantial Data especially for payment data I would suggest to use tokenezation it would help significantly reduce audit scope (Level 4 vs Level 1 compliance) and help to manage PCI-DSS Data easier. 

- Need a proper BCP (Business Continuity Plan), BCM (Business Continuity Management), Disaster Recovery. Use NIST CSF as a guide line.
- Document Maintenance Schedule and Change Management Plans.
- Need dashboards and reporting systems for top management and for Team Leads. I suggest to develop in-house solution and make it available only through intranet. Differentiate information by role and access level. Need the system with automation. Dashboard must be available from different measurements without need for manual creation. Or use cloud solution?.


