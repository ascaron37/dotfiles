# /complete-task Command

## Usage
`/complete-task <task-number>` - Mark task complete and update files

## Purpose
Systematically mark a sub-task as completed, update the task list file, and handle the completion workflow protocol.

## When to Use
- Immediately after finishing implementation of a sub-task
- When a sub-task has been successfully completed and tested
- Before asking permission to move to the next sub-task

## Critical Completion Protocol

### Step 1: Verify Task Completion
Before marking complete, ensure:
- [ ] Implementation is finished and working
- [ ] Code has been tested (manual or automated)
- [ ] All acceptance criteria are met
- [ ] Required files are created/modified as specified

### Step 2: Mark Sub-Task Complete
1. **Read the current task list file**
2. **Find the specified task number**
3. **Change `[ ]` to `[x]` for the completed sub-task**
4. **Update file modification timestamps if needed**

### Step 3: Check Parent Task Status
After marking sub-task complete:
1. **Check all other sub-tasks under the same parent**
2. **If ALL sub-tasks under parent are now `[x]`**:
   - Mark the parent task as `[x]` too
   - Note parent task completion

### Step 4: Update Task List File
1. **Save the updated task list** with completion marks
2. **Update "Relevant Files" section** if new files were created
3. **Add any newly discovered tasks** that emerged during implementation

### Step 5: Completion Workflow Protocol
After updating the file:
1. **Show the updated task section** with completion marks
2. **Ask for permission to continue**: "Sub-task completed. Ready for the next one? (y/n)"
3. **WAIT for user to say "yes", "y", or equivalent before proceeding**

## Output Format

```markdown
## Task Completion: [Task X.Y]

### Completed Task:
- [x] X.Y [Task description] ✅ COMPLETED

### Parent Task Status:
- [Status] X.0 [Parent task title]
  - [x] X.1 [Completed sub-task]
  - [x] X.Y [Just completed sub-task] ✅ JUST COMPLETED
  - [ ] X.Z [Remaining sub-task]

### Files Updated:
- `tasks-[filename].md` - Task completion marked
- [List any other files modified during this task]

### New Files Created:
- [List any files created during implementation]

### Progress Summary:
- Parent tasks completed: X/Y
- Sub-tasks completed: X/Y
- Overall progress: X%

Sub-task completed. Ready for the next one? (y/n)
```

## Critical Rules

### One Sub-Task at a Time
- **NEVER start the next sub-task until you ask for permission**
- Always pause after completion to ask for permission
- **WAIT for user confirmation before proceeding**

### Parent Task Completion Logic
```
If all sub-tasks under parent are [x]:
  - Mark parent as [x]
  - Note: "Parent task X.0 completed - all sub-tasks finished"
Else:
  - Keep parent as [ ]
  - Continue with remaining sub-tasks
```

### File Maintenance Requirements
1. **Update task list file** with completion marks
2. **Maintain "Relevant Files" section** - add new files created/modified
3. **Add newly discovered tasks** as they emerge during implementation
4. **Keep file descriptions current** with one-line purpose statements

## Task Discovery During Implementation
If new tasks become apparent during implementation:
- Add them to the task list immediately
- Use appropriate numbering (X.Y format)
- Update the task list file
- Note them in the completion summary

## Example Completion Flow

### Before Completion:
```markdown
- [ ] 2.0 Implement Core Features
  - [x] 2.1 Create user authentication
  - [ ] 2.2 Build user dashboard (currently working on)
  - [ ] 2.3 Add data validation
```

### After Completing 2.2:
```markdown
- [ ] 2.0 Implement Core Features
  - [x] 2.1 Create user authentication  
  - [x] 2.2 Build user dashboard ✅ COMPLETED
  - [ ] 2.3 Add data validation
```

### After Completing All Sub-tasks:
```markdown
- [x] 2.0 Implement Core Features ✅ COMPLETED
  - [x] 2.1 Create user authentication
  - [x] 2.2 Build user dashboard
  - [x] 2.3 Add data validation ✅ COMPLETED
```

## Integration with Other Commands
- Use after implementing work identified by `/next-task`
- Triggers `/next-task` logic for finding what to work on next
- Updates progress tracked by `/task-status`
- May trigger `/update-relevant-files` if new files were created

## Error Handling
If task number doesn't exist:
- List available incomplete tasks
- Ask user to clarify which task was completed
- Provide current task status for reference