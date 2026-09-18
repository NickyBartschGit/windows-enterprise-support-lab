IT Support & Troubleshooting Lab

A hands-on IT support lab designed to simulate common Tier 1 help desk and desktop support scenarios in a Windows and Microsoft Entra ID environment.

The project includes 10 documented support incidents covering identity and access management, Windows troubleshooting, networking, DNS, application support, permissions, printing, storage, and account security.

I also built a PowerShell workstation diagnostic tool to automate common troubleshooting checks and generate diagnostic reports for support and escalation.

# Technologies & Tools

- Windows 11
- Microsoft Entra ID
- PowerShell
- Windows Event Viewer
- Task Manager
- Windows Services
- NTFS permissions
- TCP/IP, DNS and DHCP
- CMD networking utilities
- Git and GitHub

# Lab Environment

A fictional organization, Bartsch Technologies, was created to simulate a small business environment with users across Sales, Finance, Operations, and Human Resources.

Microsoft Entra ID security groups were used to practice identity and access management, while a Windows workstation was used for hands-on troubleshooting and PowerShell exercises.

# Support Incidents

1. Sales application access failure caused by missing security group membership
2. User authentication failure requiring secure password reset
3. Browser connectivity failure caused by a VPN browser extension
4. Print failure involving a stuck queue and Windows Print Spooler
5. Workstation slowdown caused by excessive browser memory consumption
6. HR shared-folder access failure involving group membership and NTFS permissions
7. Application crash investigated using Task Manager and Windows Event Viewer
8. Low disk space causing application save failures
9. Repeated account lockouts caused by stale credentials
10. Internal website failure caused by incorrect DNS configuration

# PowerShell Diagnostic Tool

`WorkstationDiagnostic.ps1` collects common workstation troubleshooting information including:

- Computer and Windows information
- Disk utilization and low-space detection
- Active network adapter configuration
- IPv4 address, default gateway and DNS servers
- Gateway connectivity
- HTTPS connectivity
- Windows service status
- Recent Windows Application errors
- Timestamped diagnostic report generation

# Skills Demonstrated

- Tier 1 troubleshooting methodology
- Microsoft Entra ID user and group administration
- Identity and access troubleshooting
- Windows desktop support
- PowerShell scripting and automation
- DNS and DHCP troubleshooting
- TCP/IP diagnostics
- Windows service troubleshooting
- Event log analysis
- NTFS permissions and inheritance
- Security-conscious access management
- Incident documentation and escalation
- Root cause analysis and post-resolution verification

# Purpose

This project was created to build practical IT support experience alongside my Software Development education. The focus was on developing a structured troubleshooting process, documenting technical incidents, and using PowerShell to automate common workstation diagnostics.