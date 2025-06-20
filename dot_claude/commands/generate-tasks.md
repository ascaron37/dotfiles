# /generate-tasks Command

## Usage
`/generate-tasks <prd-filename>` - Generate task list from PRD (two-phase process)

## Purpose
Convert a completed PRD into a structured, actionable task list with parent tasks and sub-tasks.

## When to Use
When the user wants to generate a task list from an existing PRD file that has been reviewed and approved.

## Critical Two-Phase Process

### Phase 1: Generate Parent Tasks
1. **Read and analyze** the specified PRD file
2. **Create high-level tasks** (typically ~5 main tasks)
3. **Present tasks WITHOUT sub-tasks yet**
4. **Say exactly**: "I have generated the high-level tasks based on the PRD. Ready to generate the sub-tasks? Respond with 'Go' to proceed."
5. **WAIT for user confirmation** - Do not proceed until user says "Go"

### Phase 2: Generate Sub-Tasks
1. **Only proceed after user says "Go"**
2. **Break down each parent task** into smaller, actionable sub-tasks
3. **Identify relevant files** that will be created/modified
4. **Generate final output** with complete structure

## Output Format
Save as `tasks-[prd-file-name].md` in `/tasks/` directory:

```markdown
## Relevant Files

- `path/to/file1.ts` - Brief description of purpose
- `path/to/file1.test.ts` - Unit tests for file1.ts
- `path/to/another/file.tsx` - Brief description
- `path/to/another/file.test.tsx` - Unit tests for another/file.tsx

### Notes

- Unit tests should be placed alongside code files
- Use `npx jest [optional/path/to/test/file]` to run tests
- Running without path executes all tests found by Jest configuration

## Tasks

- [ ] 1.0 Parent Task Title
  - [ ] 1.1 [Sub-task description]
  - [ ] 1.2 [Sub-task description]
- [ ] 2.0 Parent Task Title
  - [ ] 2.1 [Sub-task description]
- [ ] 3.0 Parent Task Title
```

## Task Creation Guidelines

### Parent Tasks (X.0)
- Should align with major PRD sections or functional areas
- Typically 3-7 high-level tasks
- Examples:
  - "1.0 Setup Project Structure"
  - "2.0 Implement Core Features"
  - "3.0 Add User Interface Components"
  - "4.0 Integrate Backend Services"
  - "5.0 Testing and Validation"

### Sub-Tasks (X.Y)
- Should be specific and actionable
- Estimate 30 minutes to 4 hours each
- Include file creation/modification
- Examples:
  - "1.1 Initialize repository and dependencies"
  - "2.1 Create user authentication service"
  - "3.1 Build login component"

### File Identification
For each task, identify:
- **Source files** that will be created/modified
- **Test files** corresponding to each source file
- **Configuration files** if needed
- **Documentation files** if applicable

## Technology Stack Considerations
When generating tasks, consider the project's technology stack:
- **Languages**: C++, Python, C#, JavaScript
- **Frontend**: Angular, React
- **Development Tools**: Claude Code v1.0.17

## Integration with PRD Elements

### From Goals Section
- Create parent tasks that align with each major goal
- Ensure tasks contribute to measurable objectives

### From User Stories Section
- Create sub-tasks for each user story implementation
- Group related user stories under appropriate parent tasks

### From Functional Requirements Section
- Each requirement should map to one or more sub-tasks
- Maintain traceability between requirements and tasks

### From Success Metrics Section
- Include validation and testing tasks
- Add tasks for metrics collection/measurement

## File Location
Save the completed task list as `tasks-[prd-filename].md` in the `/tasks/` directory.

## Next Steps
After generating tasks, the task list becomes the single source of truth for project progress. Use `/next-task` to identify what to work on first.