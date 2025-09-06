# 🛠️ Suggested Setup Order (Ansible-friendly)

- Install essential packages (tools grouped by function).
- Configure and enable services (e.g., auditd, fail2ban).
- Apply secure configurations (e.g., nftables rules, AppArmor profiles).
- Run baseline scans (AIDE, rkhunter, chkrootkit).
- Schedule periodic audits (cron or systemd timers).

This role is hoisting basic Debian OS it is generic and not specific to any task. From this role it is possible to establish other more specific Debians.

## Requirements

This role is supposed to be run as self-hoisted. Python suppose to be present on the system prior to installations. First activate Virtual Environment and than use pip to install ansible locally.

## Role Variables

defaults/main.yml:     

- packages\_to\_remove: This features of the system are not in use under general installation.
- services\_to\_disable: The services that are not in use. To reduce attack vectors shut them down.
- install\_common\_packages: This packages are required to be present on the system.
- git\_user\_name: Default Name to be in use in gitconfig under the user
- git\_user\_email: defult Email address for git user in gitconfig

playbooks/debian\_baseline.yml:

IMPORTANT!!! Do change this variables for each or the local run!!!

- git\_user\_name: "Alice" This is totally random name change it to desired.
- git\_user\_email: "alice@example.com" Change Email to real Email Address.

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.


## License

BSD-3-Clause
