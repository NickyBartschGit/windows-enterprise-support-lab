# INC-002 - User Authentication Failure

**Department:** Finance  
**Category:** Identity / Authentication

# Issue
A Finance employee was unable to authenticate because their password was being rejected.

## Investigation
Verified the user's identity before making credential changes and reviewed the account in Microsoft Entra ID.

# Root Cause
User credential issue requiring an administrator password reset.

## Resolution
Performed an administrator password reset and provided the temporary credential workflow requiring the user to establish a new password.

# Result
User authentication was restored.

## Security Consideration
Identity was verified before resetting credentials to reduce the risk of unauthorized account access.

# Skills Practiced
Microsoft Entra ID, credential administration, identity verification, password resets, account security, and incident documentation.
