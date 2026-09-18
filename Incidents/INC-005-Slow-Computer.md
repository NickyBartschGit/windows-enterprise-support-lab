# INC-005 - Workstation Performance Issue

**Department:** Operations  
**Category:** Performance / Application

# Issue
A user reported severe workstation slowdown and applications taking significantly longer to open.

# Investigation
Confirmed the workstation had already been restarted. Task Manager showed normal CPU and disk utilization but approximately 94% memory utilization. Chrome was consuming approximately 5.8 GB of RAM. Chrome Task Manager identified an internal reporting dashboard consuming several gigabytes of memory, with its usage continuing to increase while idle.

# Root Cause
Abnormal memory growth associated with the internal reporting dashboard.

# Resolution
Closed and reopened only the affected dashboard tab. Its memory consumption dropped significantly and overall system memory utilization returned to a normal level.

# Result
The workstation became responsive and the user confirmed normal application performance.

# Follow-Up
Escalated the suspected abnormal memory growth to the application/development team for further investigation.

# Skills Practiced
Task Manager, memory troubleshooting, process isolation, Chrome Task Manager, least-disruptive remediation, escalation, and root-cause analysis.
