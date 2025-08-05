# Attack

Given your **planned topology** (2 departments, firewall/router VM, SOC/Admin, attacker machine, minimal Alpine endpoints), and your **goal** to run multiple scenarios without needing a huge setup, we can plan tests that are:

* **Realistic** — something you might see in a real network.
* **Resource-friendly** — doable on your hardware.
* **Incremental** — start simple, grow complexity later.

---

## **Phase 1 – Network & Segmentation Testing (Foundations)**

Why? These are the easiest to run without much resource use and will teach you **visibility** and **control** in your network.

1. **Port Scanning & Service Enumeration**

   * **What:** Attacker runs `nmap` against each subnet to discover hosts and services.
   * **Goal:**

     * Verify segmentation (should attacker “see” only allowed subnets?).
     * Learn to detect scans with IDS (Suricata/Snort).
   * **Why important:** Port scanning is the first stage of most intrusions.

2. **Firewall Evasion Testing**

   * **What:** Use `nmap` options like fragmented packets or decoys.
   * **Goal:** Test if your firewall blocks or logs suspicious patterns.
   * **Why important:** Firewalls aren’t just about “block all” — you need to see if weird traffic slips through.

---

## **Phase 2 – Internal Network Exploitation (No Internet Required)**

Why? Real breaches often happen **after** the attacker is inside (via phishing, infected USB, etc.).

3. **SMB/FTP Weak Credentials**

   * **What:** Set up an endpoint with weak local service credentials. Try to brute-force them from attacker machine.
   * **Goal:** Detect login attempts, block them with firewall rules or fail2ban.
   * **Why important:** Weak creds are still a top cause of breaches.

4. **Privilege Escalation on Endpoint**

   * **What:** Use a vulnerable Alpine package or misconfigured sudo to escalate from user to root.
   * **Goal:** Learn to spot post-exploitation activity from SOC machine.
   * **Why important:** Defense-in-depth is useless if endpoint privilege escalation is trivial.

---

## **Phase 3 – Lateral Movement & Data Exfiltration**

Why? Real attackers don’t stop at the first machine.

5. **Pass-the-Hash / Credential Reuse**

   * **What:** Use same local password hash in two VMs. Once attacker compromises one, try to SSH into the other.
   * **Goal:** Spot unusual SSH logins from wrong subnets.
   * **Why important:** Credential reuse is very common in real companies.

6. **Simulated Data Theft**

   * **What:** Put “sensitive” files in Finance dept. Simulate sending them out to the attacker over an allowed port (e.g., HTTPS).
   * **Goal:** Learn to detect unusual outbound traffic in Suricata logs.
   * **Why important:** Most security teams fail to catch outbound exfiltration early.

---

## **Phase 4 – Denial of Service & Stress Testing (Optional)**

Why? Resource heavy, but worth learning at small scale.

7. **Service Flooding (DoS)**

   * **What:** Run a small-scale SYN flood against one service to see how it’s logged.
   * **Goal:** Create firewall rate-limiting rules.
   * **Why important:** Even small DoS events can cause disruptions.

---

💡 **Mentor’s Advice:**

* Start with **Phase 1** and **Phase 2** — they require no internet, low resources, and teach 80% of what matters in real network security.
* Keep logs from every attack in SOC — these become your **incident reports** for documentation.
* Only move to Phase 3 and 4 once you’re comfortable spotting attacks in logs.

---
