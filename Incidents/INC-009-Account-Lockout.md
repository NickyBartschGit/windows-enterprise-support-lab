# INC-009 - Repeated Account Lockouts

**Department:** Sales  
**Category:** Identity / Security

# Issue
A Sales employee experienced recurring account lockouts shortly after changing their password.

## Investigation
Verified the user's identity and reviewed sign-in activity. The work laptop authenticated successfully using the new password, while repeated failures occurred approximately every five minutes from a previously used tablet. The tablet still had the work account configured with stale credentials.

# Root Cause
Stored credentials on an old tablet repeatedly attempted authentication using the previous password, resulting in recurring account lockouts.

# Resolution
Stopped authentication attempts from the old device and removed the unused work account before restoring account access.

# Result
The work laptop continued authenticating normally and no additional failed attempts or lockouts occurred during monitoring.

# Security Consideration
Reviewed device, location, and sign-in patterns to distinguish stale credentials from a potential account compromise.

# Skills Practiced
Identity troubleshooting, sign-in analysis, stale credentials, authentication, account security, root-cause analysis, and security escalation awareness.
