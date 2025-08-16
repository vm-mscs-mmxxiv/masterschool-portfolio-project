# Office Networking

This document provides a summary of the current state of a company's network infrastructure, outlines the challenges, and presents a strategic roadmap for its future development. The recommendations are informed by the directives of the executive board to ensure the network becomes a scalable, secure, and strategic asset that supports our business growth.

## Current Network Architecture

Our current network setup is a blend of wired and wireless solutions designed to support on-site and remote work.

- **On-site Connectivity:** The office network provides stable LAN and Wi-Fi access for full-time employees, part-time staff, and contractors. However, network wiring is not universal across all areas, and retrofitting may be required to ensure seamless coverage. The network must maintain segregation between secure zones, even if we're spread across multiple floors or suites.
- **Remote Access:** Remote teams, including those in Financial, Sales, and IT, rely on a mix of cloud-based tools, VPNs, and video conferencing. A key challenge is maintaining consistent performance and security, as these users often connect from public or home networks with variable internet quality.
- **Guest Access:** Guests, including visitors and contractors, are granted internet-only access from designated areas like conference rooms and the lobby. This segregation helps to limit potential security risks.
- **Operational Technology (OT) & IoT:** Smart boards, video conferencing systems, and digital signage are currently in use, but their segregation from sensitive business systems is a critical area for improvement to ensure both security and constant availability.

## Key Operational and Security Challenges

- **Network Segregation:** There is a need for clearer and more robust network segmentation. Critical systems, such as Accounting and ERP[^1], must be resilient to network issues and isolated from less secure traffic. A secure, isolated environment is also needed for external users (e.g., vendors, contractors) and for new projects or acquisitions to mitigate risk.
The network must support secure inter-office communication (e.g., VPNs or SD-WAN), while still being flexible enough to adapt if we grow faster than expected.
- **Scalability & Performance:** The current network infrastructure faces challenges in handling sudden spikes in traffic, which could be caused by new acquisitions, large file transfers, or the integration of new technologies like AI. Consistent performance during these bursts is not guaranteed.
- **Security & Compliance:** We need to enhance our security posture to support audit readiness, maintain access logs, and enforce strict retention policies. The network must support granular access controls, especially for external users, to comply with regulatory requirements and minimize high-risk vectors.
- **Resilience & Redundancy:** The network lacks comprehensive redundancy for internet and key services, making it vulnerable to single points of failure. Downtime could expose data or cause the loss of in-progress work.

## Strategic Directives from the Executive Board

The executive board has outlined a clear vision for the network as a strategic asset. Our future network design must align with the following directives:

- **Scalable Growth:** The network must be architected for future growth, including potential M&A activities and rapid headcount increases. It should be modular and flexible, supporting expansion into new floors or buildings without requiring a complete redesign, it doesn't have to be department-specific to the point of rigidity. The focus should be on proactive, long-term investment to avoid future rework.
Network performance must stay consistent during traffic bursts—especially with AI pipelines or large file transfers.
Internal collaboration tools must scale to handle surge in file transfers and communications.
Assume variable internet quality. The solution should degrade gracefully and avoid requiring super-fast connections.
Plan for sudden load changes—a new acquisition could double our traffic overnight.
- **Operational Resilience:** The network must support graceful degradation and remain performant even with variable internet quality. It should be designed to handle sudden load changes and rapidly onboard new users, such as project-based contractors, without extensive manual configuration. Segregation of operational technology from the main network is a priority to prevent cross-impact.
- **Security & Compliance:** Security must be foundational to the network's design. This includes robust access controls, secure external access, and a clear path to audit readiness. The network must be able to support granular access logs and retention policies to meet compliance requirements.
Remote users uch as financial, sales, IT often connect from public networks.

---

[^1]: ERP ( Enterprise Resource Planning)
