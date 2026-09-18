# INC-001 - Sales Application Access Failure

**Department:** Sales  
**Category:** Identity / Access

# Issue
A new Sales employee was unable to access a department application while another Sales employee could access it normally.

## Investigation
Compared the affected user's Microsoft Entra ID configuration with a known-working Sales employee. Reviewed membership of the SG-Sales security group and found that the affected user was missing from the group.

# Root Cause
The user was not a member of the SG-Sales security group responsible for department access.

# Resolution
Added the user to SG-Sales and verified successful group membership.

# Result
Simulated application access was restored.

# Skills Practiced
Microsoft Entra ID, security groups, group-based access, known-good comparison, least privilege, and incident documentation.
