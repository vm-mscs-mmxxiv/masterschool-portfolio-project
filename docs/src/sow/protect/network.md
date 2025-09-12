# Protect - Network

For the sake of brevity, I will presume that the cabling is done properly and that there is absolutely no need to create new access points on the floors.

## VLAN 

Over couple of years departments are expected to grow. Below is number of  hosts and purposed IP Addresses

|Department|Hosts|Network IP Addresses|Useful Addresses|
|----------------------|--------|---------------------------------|-----------------------------|
|Client Services / Consulting|50|192.168.1.0/25|192.168.1.1 - 192.168.1.62|
|Sales & Marketing|20|192.168.1.64/26|192.168.1.65 - 192.168.1.94|
|Operations / Admin|15|192.168.1.96/26|192.168.1.97 - 192.168.1.126|
|IT & Systems Support|15|192.168.1.128/26|192.168.1.129 - 192.168.1.142|
|Finance & Accounting|10|192.168.1.144/27|192.168.1.145 - 192.168.1.158|
|Human Resources|9|192.168.1.160/27|192.168.1.161 - 192.168.1.174|
|Compliance & Risk|8|192.168.1.176/27|192.168.1.177 - 192.168.1.190|
|Leadership / Executive|6|192.168.1.192/27|192.168.1.193 - 192.168.1.206|

> This table is not right. PCI-DSS require separate network.

---

## Scope of Work

- Implement proper network segmentation. 
- Implement network security hardening
- Configure network devices
- Configure protocols and end-to-end encryption

## Tasks

### Network Segmentation

Divide the network into isolated zones. This prevents an attacker from moving laterally from a compromised workstation to a server containing sensitive data.
