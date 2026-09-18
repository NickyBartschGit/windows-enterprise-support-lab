# INC-004 - Printer Queue Failure

**Department:** Finance  
**Category:** Printing / Windows Services

# Issue
A Finance employee was unable to print and multiple documents remained stuck in the local print queue.

## Investigation
Confirmed the correct printer was selected, the physical printer was online with no errors, and other employees could print normally. This isolated the issue to the user's workstation. Cleared the existing queue, but a new test job also became stuck. Verified the Print Spooler service status with PowerShell.

# Root Cause
Local Windows printing/spooler issue causing print jobs to remain stuck.

# Resolution
Used elevated PowerShell to restart the Windows Print Spooler service and verified that it returned to a Running state.

# Result
The user successfully completed a test print.

# Skills Practiced
Printer troubleshooting, Windows services, PowerShell Get-Service and Restart-Service, administrator elevation, UAC, issue isolation, and verification.
