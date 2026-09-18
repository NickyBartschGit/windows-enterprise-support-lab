# INC-010 - Internal Website DNS Failure

**Department:** Operations  
**Category:** Network / DNS

# Issue
An Operations employee could access the public internet but could not reach an internal company website required for shipping reports.

# Investigation
Confirmed another Operations employee could access the internal site. Tested Chrome and Edge and reproduced the failure in both browsers. Verified external HTTPS connectivity using Test-NetConnection. Used nslookup and found that the internal hostname could not be resolved. Compared ipconfig /all output against a known-working workstation and found the affected computer was using public DNS servers instead of the company's internal DNS servers.

# Root Cause
Incorrect DNS configuration prevented resolution of the internal company hostname.

# Resolution
Released and renewed the workstation's DHCP configuration using ipconfig /release and ipconfig /renew. Verified that the workstation received the correct internal DNS servers. Used nslookup to confirm successful internal hostname resolution.

## Result
The internal Operations website loaded successfully and the user regained access to the shipping reporting system.

# Skills Practiced
DNS, DHCP, TCP/IP, PowerShell, CMD, Test-NetConnection, nslookup, ipconfig, browser isolation, known-good comparison, root-cause analysis, and post-resolution verification.
