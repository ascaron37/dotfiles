# /review-prd Command

## Usage
`/review-prd <filename>` - Review existing PRD for completeness

## Purpose
Systematically review an existing PRD file to ensure it meets quality standards and contains all necessary information for development.

## When to Use
- Before generating tasks from a PRD
- When updating or refining an existing PRD
- To validate PRD completeness and quality

## Workflow Process

### Step 1: Read and Analyze PRD
1. Read the specified PRD file completely
2. Check for the required structure sections
3. Evaluate content quality and completeness

### Step 2: Structure Validation
Verify the PRD contains all required sections:

#### Required Sections
- [ ] **Introduction/Overview** - Clear problem statement
- [ ] **Goals** - Specific, measurable objectives
- [ ] **User Stories** - Proper format with user type, action, benefit
- [ ] **Functional Requirements** - Numbered, specific system requirements
- [ ] **Non-Goals** - Clear scope limitations
- [ ] **Success Metrics** - Measurable outcomes

#### Optional Sections (when applicable)
- [ ] **Design Considerations** - UI/UX requirements
- [ ] **Technical Considerations** - Constraints and dependencies
- [ ] **Open Questions** - Remaining clarifications needed

### Step 3: Content Quality Review

#### Goals Section
- [ ] Goals are specific and measurable
- [ ] Goals align with the problem statement
- [ ] Goals are achievable within scope

#### User Stories Section
- [ ] Follow proper format: "As a [user type], I want to [action] so that [benefit]"
- [ ] Cover primary user workflows
- [ ] Stories are actionable and testable

#### Functional Requirements Section
- [ ] Requirements are numbered and specific
- [ ] Each requirement starts with "The system must..."
- [ ] Requirements are testable and unambiguous
- [ ] No duplicate or conflicting requirements

#### Non-Goals Section
- [ ] Clearly defines what is out of scope
- [ ] Helps prevent scope creep
- [ ] Aligned with project constraints

#### Success Metrics Section
- [ ] Metrics are measurable and specific
- [ ] Metrics align with stated goals
- [ ] Clear definition of "done"

### Step 4: Junior Developer Test
Evaluate if the PRD is suitable for junior developers:
- [ ] Language is clear and unambiguous
- [ ] Technical jargon is explained or avoided
- [ ] Requirements are explicit, not implicit
- [ ] No assumptions about prior knowledge

### Step 5: Provide Review Results
After analysis, provide:

```markdown
## PRD Review Results for [filename]

### Structure Completeness: [X/Y sections present]
- ✅ Required sections present
- ⚠️  Missing sections (if any)
- 📝 Optional sections that could improve clarity

### Content Quality Assessment:
#### Strengths:
- [List what is well done]

#### Areas for Improvement:
- [Specific recommendations]

#### Missing Information:
- [What questions remain unanswered]

### Junior Developer Readiness: [Ready/Needs Improvement]
[Assessment of clarity and explicitness]

### Recommendations:
1. [Specific action items to improve the PRD]
2. [Additional clarifications needed]

### Ready for Task Generation: [Yes/No]
[Final assessment if PRD is ready for `/generate-tasks`]
```

## File Location
PRD files should be located in the `/tasks/` directory with naming pattern `prd-[feature-name].md`