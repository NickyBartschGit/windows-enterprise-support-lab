# INC-006 - HR Shared Folder Access Denied

**Department:** Human Resources  
**Category:** Access / Permissions

# Issue
An HR employee received Access Denied when attempting to open an Employee Records folder that they had previously been able to access.

# Investigation
Verified the user's identity and confirmed their role was authorized for the resource. Other HR employees retained access, isolating the problem to the affected user. Reviewed SG-HR membership and found the user was no longer a member.

# Root Cause
The user had been removed from the security group responsible for authorized HR resource access.

# Resolution
Because the resource contained sensitive employee information, obtained documented approval from the HR Manager before modifying access. Restored SG-HR membership and verified the change.

# Result
Authorized access was restored.

## Additional Lab Work
Created a Windows test folder and reviewed NTFS Full Control, Modify, Read & Execute, Read, and Write permissions. Used Advanced Security Settings to examine inherited permissions.

# Skills Practiced
Microsoft Entra ID, security groups, NTFS permissions, permission inheritance, least privilege, authorization procedures, identity verification, and escalation.
