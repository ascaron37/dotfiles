# /create-prd Command

## Usage
`/create-prd <feature-description>` - Start PRD creation process with clarifying questions

## Purpose
Convert brief feature descriptions into structured Product Requirements Documents (PRDs) through systematic questioning and documentation.

## When to Use
When the user requests a new feature or provides a brief description that needs to be turned into a structured PRD.

## Critical Rules
1. **NEVER start implementing immediately**
2. **ALWAYS ask clarifying questions first**
3. Generate PRD only after gathering sufficient detail
4. Save as `prd-[feature-name].md` in `/tasks/` directory

## Workflow Process

### Step 1: Required Clarifying Questions
Before writing any PRD, ask these questions (adapt based on the prompt):

#### Core Understanding
- "What problem does this feature solve for the user?"
- "Who is the primary user of this feature?"
- "What is the main goal we want to achieve?"

#### Functionality Details
- "Can you describe the key actions a user should be able to perform?"
- "Could you provide a few user stories? (e.g., As a [type of user], I want to [perform an action] so that [benefit])"
- "What kind of data does this feature need to display or manipulate?"

#### Scope and Boundaries
- "Are there any specific things this feature should NOT do (non-goals)?"
- "How will we know when this feature is successfully implemented?"
- "Are there any potential edge cases or error conditions we should consider?"

#### Technical Context
- "Are there any existing design mockups or UI guidelines to follow?"
- "Are there any known technical constraints or dependencies?"

### Step 2: PRD Creation
Use this exact structure for all PRDs:

```markdown
# [Feature Name] - Product Requirements Document

## Introduction/Overview
[Brief description of the feature and problem it solves]

## Goals
- [Specific, measurable objective 1]
- [Specific, measurable objective 2]

## User Stories
- As a [user type], I want to [action] so that [benefit]
- As a [user type], I want to [action] so that [benefit]

## Functional Requirements
1. The system must [specific functionality]
2. The system must [specific functionality]
3. The system must [specific functionality]

## Non-Goals (Out of Scope)
- [What this feature will NOT include]
- [Scope limitation]

## Design Considerations (Optional)
[UI/UX requirements, mockups, component mentions]

## Technical Considerations (Optional)
[Technical constraints, dependencies, integration notes]

## Success Metrics
- [How success will be measured]
- [Specific metrics or KPIs]

## Open Questions
- [Remaining questions or clarifications needed]
```

## Target Audience
Write PRDs for **junior developers** - be explicit, unambiguous, and avoid jargon.

## Technology Stack Context
Consider these technologies when asking technical questions:
- **Languages**: C++, Python, C#, JavaScript
- **Frontend**: Angular, React
- **Development Tools**: Claude Code v1.0.17

## File Location
Save the completed PRD as `prd-[feature-name].md` in the `/tasks/` directory.