# Passive Reconnaissance Report – holbertonschool.com

## 1. Introduction

This report documents a passive reconnaissance investigation of the domain **holbertonschool.com** using publicly available information obtained from Shodan.io.  
No active scanning or direct interaction with the target infrastructure was performed.

The objective is to identify IP addresses, hosting infrastructure, and technologies used across Holberton School services.

---

## 2. IP Addresses and Hosting Infrastructure

Based on Shodan results, multiple IP addresses associated with **holbertonschool.com** were identified.  
These systems are hosted on Amazon Web Services (AWS), indicating a cloud-based infrastructure.

### Identified IP Addresses

- **35.180.27.154**
  - Cloud Provider: Amazon Web Services (EC2)
  - Region: eu-west-3 (Paris, France)
  - Operating System: Ubuntu

- **52.47.143.83**
  - Cloud Provider: Amazon Web Services (EC2)
  - Region: eu-west-3 (Paris, France)
  - Associated Subdomain: `yriry2.holbertonschool.com`

These IPs belong to the ASN **AS16509**, operated by Amazon.com, Inc.

---

## 3. Technologies and Frameworks Identified

Shodan reveals several technologies used across holbertonschool.com services.

### Web Servers and Reverse Proxies
- Nginx
  - Versions observed: 1.18.0, 1.21.6
  - Used as both web server and reverse proxy

### Operating Systems
- Ubuntu Linux

### Web Applications
- Discourse (forum software) identified on `yriry2.holbertonschool.com`

### Security Technologies
- TLS/SSL encryption (Let’s Encrypt certificates)
- HTTP security headers (HSTS, CSP, X-Frame-Options)

---

## 4. Observations

- The infrastructure is fully cloud-hosted on AWS.
- HTTPS is enforced using valid TLS certificates.
- Web services are fronted by Nginx, indicating a standardized deployment.
- Forum services are isolated on a dedicated subdomain.

All information was collected passively from Shodan and does not indicate any active probing of the target systems.

---

## 5. Conclusion

This passive reconnaissance exercise demonstrates how publicly available intelligence from Shodan.io can reveal valuable information about an organization’s external infrastructure.  
Without directly interacting with holbertonschool.com, it was possible to identify hosting providers, IP addresses, operating systems, and deployed technologies.

Passive reconnaissance plays a critical role in the early stages of the Unified Kill Chain by allowing information gathering while minimizing detection.

