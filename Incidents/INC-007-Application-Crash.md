# INC-007 - SalesCRM Application Crash

**Department:** Sales  
**Category:** Application Support

# Issue
SalesCRM briefly launched and then immediately terminated. Restarting the workstation did not resolve the problem.

# Investigation
Confirmed other Sales employees could use the application. Reproduced the issue and used Task Manager to confirm that SalesCRM.exe started before terminating. Reviewed the corresponding Windows Application log entry in Event Viewer and identified SalesCRM.dll as the faulting module.

# Root Cause
Application-level fault associated with SalesCRM.dll. Exact underlying cause was not determined.

## Resolution
Used the Windows application repair option to repair the existing installation without resetting user data.

# Result
SalesCRM launched normally and the user regained access.


# Additional Lab Work
Used PowerShell Get-WinEvent to retrieve and filter Windows Application errors.

# Skills Practiced
Application troubleshooting, Task Manager, Event Viewer, Windows event logs, PowerShell, application repair, evidence-based root-cause documentation, and verification.
