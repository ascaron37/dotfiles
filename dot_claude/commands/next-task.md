# /next-task Command

## Usage
`/next-task` - Identify next sub-task to work on

## Purpose
Analyze the current task list to determine which sub-task should be worked on next, ensuring proper workflow progression.

## When to Use
- At the start of a development session
- After completing a sub-task and getting permission to continue
- When unsure which task to work on next
- Before starting implementation work

## Workflow Process

### Step 1: Find Task List File
1. Look for task files in `/tasks/` directory
2. Identify the most recent or active `tasks-*.md` file
3. If multiple task files exist, ask user which one to focus on

### Step 2: Analyze Current Progress
Read the task file and identify:
- **Completed tasks**: Marked with `[x]`
- **In-progress tasks**: Currently being worked on
- **Pending tasks**: Marked with `[ ]` and ready to start

### Step 3: Determine Next Sub-Task
Apply these rules in order:

#### Rule 1: Complete In-Progress Tasks First
- If any sub-task is partially completed, finish it first
- Never start a new sub-task while another is in progress

#### Rule 2: Follow Sequential Order
- Work on sub-tasks in numerical order (1.1, 1.2, 1.3...)
- Complete all sub-tasks under a parent before moving to next parent

#### Rule 3: Check Dependencies
- Ensure prerequisite tasks are completed
- Verify required files/setup exists before starting

### Step 4: Provide Next Task Recommendation
Output format:

```markdown
## Next Task Analysis

### Current Task List: `tasks-[filename].md`

### Progress Summary:
- Completed: X parent tasks, Y sub-tasks
- In Progress: [Task number if any]
- Remaining: X parent tasks, Y sub-tasks

### Next Sub-Task Recommendation:

**Task [X.Y]: [Task Description]**

**Why this task:**
- [Reason based on workflow rules]
- [Dependencies that are met]
- [Logical progression explanation]

**Before starting, verify:**
- [ ] Previous sub-tasks in this parent are complete
- [ ] Required files/dependencies are available
- [ ] Understanding of task requirements is clear

**Ready to start this task? (y/n)**
```

## Critical Rules to Follow

### One Sub-Task at a Time
- **NEVER start the next sub-task until you ask for permission**
- After identifying the next task, ask: "Ready to start this task? (y/n)"
- **WAIT for user to say "yes", "y", or equivalent before proceeding**

### Dependency Checking
- Verify all prerequisite tasks are marked as `[x]`
- Check that required files from "Relevant Files" section exist
- Ensure development environment is properly set up

### Parent Task Completion
- Complete all sub-tasks under a parent before moving to next parent
- When all sub-tasks under a parent are `[x]`, mark parent as `[x]`

## Common Scenarios

### Starting Fresh
- Identify first uncompleted sub-task (usually 1.1)
- Verify project setup requirements
- Recommend starting with foundational tasks

### Mid-Project
- Continue with next sequential sub-task
- Check for any blocked or dependent tasks
- Maintain momentum on current parent task

### After Completion
- Move to next parent task's first sub-task
- Update overall progress assessment
- Plan upcoming work

## Integration with Other Commands
- Use after `/complete-task` to identify what's next
- Coordinate with `/task-status` for overall progress view
- Prepare for `/complete-task` after finishing recommended task

## File Dependencies
- Requires active task list file in `/tasks/` directory
- Uses "Relevant Files" section for dependency checking
- References PRD for context when needed