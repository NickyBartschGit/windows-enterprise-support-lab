# Troubleshooting Methodology

# Overview

Throughout this IT Support Lab, I used a structured troubleshooting process rather than immediately applying fixes.

The goal was to identify the scope of an issue, collect evidence, isolate the most likely cause, apply the least disruptive appropriate solution, and verify the result.

## 1. Understand the Issue

Start by gathering information from the user and clearly defining the problem.

Questions may include:

- What is not working?
- When did the issue begin?
- Has it worked previously?
- What changed recently?
- Is there an error message?
- Is the issue reproducible?

# 2. Determine the Scope

Establish whether the problem affects:

- One user
- One workstation
- One application
- One department
- Multiple users or systems

Comparing the affected system with a known-working user or workstation can help isolate the problem.

## 3. Collect Evidence

Use appropriate Windows and administrative tools before making changes.

Examples include:

- Task Manager for resource and process usage
- Event Viewer for application and system errors
- PowerShell for system, service, network, and event information
- ipconfig for network configuration
- nslookup for DNS resolution
- ping and Test-Connection for reachability
- Test-NetConnection for TCP connectivity
- Microsoft Entra ID for identity and group configuration
- Windows Security settings for NTFS permissions

# 4. Isolate the Cause

Use collected evidence to narrow the issue to a specific layer or component.

Examples:

- User account vs. workstation
- Browser vs. network
- DNS vs. general internet connectivity
- Application vs. operating system
- Local permissions vs. group membership
- Workstation vs. shared infrastructure

Avoid assuming that two events occurring at the same time means one caused the other.

# 5. Apply the Least-Disruptive Fix

Start with a solution that addresses the evidence while minimizing unnecessary changes.

Examples include:

- Correcting group membership
- Restarting a failed Windows service
- Disabling a problematic browser extension
- Repairing an application before reinstalling it
- Renewing DHCP configuration
- Removing verified-safe temporary files

# 6. Verify the Resolution

Reproduce the original action after the change.

Examples include:

- Launch the affected application
- Print a test document
- Save the affected file
- Resolve the hostname again
- Load the affected website
- Confirm resource utilization returned to normal

A troubleshooting ticket is not considered resolved simply because a configuration change was made.

# 7. Document and Escalate

Document:

- User-reported issue
- Investigation performed
- Evidence collected
- Root cause when known
- Resolution
- Verification
- Relevant follow-up

Escalate when the issue requires additional authorization, specialized expertise, infrastructure changes, security investigation, or application development work.

When the exact underlying cause cannot be proven, document the available evidence rather than presenting an assumption as fact.

# Security Principles

Troubleshooting should not override security requirements.

Before sensitive actions:

- Verify identity before credential resets
- Confirm authorization before granting access
- Follow least privilege
- Obtain required approval for sensitive resources
- Investigate unexpected authentication activity
- Avoid exposing credentials or sensitive diagnostic information