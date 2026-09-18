# INC-008 - Low Disk Space

**Department:** Finance  
**Category:** Storage / Application Support

# Issue
A Finance employee received low-storage warnings and encountered errors when attempting to save Excel files.

# Investigation
Verified the expected storage configuration and confirmed no drives were missing. The C: drive had approximately 3.2 GB of free space. Windows Storage analysis showed a large amount of temporary data. Investigation identified excessive retained application logs among the primary consumers.

## Root Cause
Insufficient free disk space caused by excessive temporary data and retained Finance application logs.

# Resolution
Removed verified-safe temporary data while preserving Downloads and user work files. Free disk space increased from approximately 3.2 GB to 79.6 GB.

# Result
The affected Excel workbook saved successfully and low-storage warnings were resolved.

# Follow-Up
Escalated the excessive application log accumulation for investigation into log rotation and retention.

# Skills Practiced
Windows storage troubleshooting, disk utilization, PowerShell Get-PSDrive, safe cleanup, data protection, application logs, escalation, and verification.
