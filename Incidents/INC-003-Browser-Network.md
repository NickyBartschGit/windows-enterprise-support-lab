# INC-003 - Browser Connectivity Failure

**Department:** Operations  
**Category:** Network / Browser

# Issue
A user was unable to load webpages in Chrome while other employees had working internet access.

## Investigation
Verified the active physical network adapter and confirmed valid IPv4, gateway, DNS, and DHCP configuration. Successfully tested the default gateway and external IP connectivity. Verified DNS resolution and HTTPS connectivity using Test-NetConnection. Confirmed no WinHTTP or Windows proxy was configured. Edge successfully loaded webpages, isolating the issue to Chrome. Chrome contained an unrecognized VPN extension.

# Root Cause
A VPN browser extension was interfering with Chrome network traffic.

# Resolution
Disabled the VPN extension and restarted Chrome.

# Result
Webpages loaded normally.

## Skills Practiced
TCP/IP troubleshooting, DNS, HTTPS, proxy configuration, browser isolation, ipconfig, ping, nslookup, Test-NetConnection, and structured troubleshooting.
