# /task-status Command

## Usage
`/task-status` - Show current progress on all tasks

## Purpose
Provide a comprehensive overview of task progress across all active task lists, showing completed work, current status, and remaining items.

## When to Use
- At the start of a development session to understand current progress
- During project review meetings or status updates
- When switching between different features/PRDs
- To assess overall project completion

## Workflow Process

### Step 1: Find All Task Files
1. **Scan `/tasks/` directory** for all `tasks-*.md` files
2. **Identify active vs archived** task lists
3. **Sort by creation date or priority** if multiple exist

### Step 2: Analyze Each Task List
For each task file, calculate:
- **Total parent tasks** and completion status
- **Total sub-tasks** and completion status  
- **Current in-progress tasks** (if any)
- **Next recommended task** to work on
- **Overall completion percentage**

### Step 3: Generate Status Report

## Output Format

```markdown
# Task Status Report
*Generated: [Current Date and Time]*

## Overview
- **Active Task Lists**: X
- **Total Projects**: X  
- **Overall Completion**: X% (X/Y tasks completed)

---

## Task List: `tasks-[feature-name].md`
**Source PRD**: `prd-[feature-name].md`
**Last Updated**: [Date]

### Progress Summary
- **Parent Tasks**: X/Y completed (X%)
- **Sub-Tasks**: X/Y completed (X%)  
- **Status**: [Active/On Hold/Completed]

### Completed Parent Tasks ✅
- [x] 1.0 [Parent task title]
- [x] 2.0 [Parent task title]

### In Progress 🔄
- [ ] 3.0 [Parent task title] (X/Y sub-tasks complete)
  - [x] 3.1 [Completed sub-task]
  - [ ] 3.2 [Next sub-task] ← **NEXT TO WORK ON**
  - [ ] 3.3 [Pending sub-task]

### Pending 📋
- [ ] 4.0 [Parent task title]
- [ ] 5.0 [Parent task title]

### Key Files Created/Modified
- `path/to/file1.ts` - [Purpose]
- `path/to/file2.tsx` - [Purpose]
- [X more files...]

---

## Task List: `tasks-[another-feature].md`
[Similar format for additional task lists]

---

## Recommendations

### Immediate Next Steps
1. **Continue with**: Task 3.2 in `tasks-[feature-name].md`
2. **Priority**: [High/Medium/Low] based on dependencies
3. **Estimated Time**: [Time estimate if available]

### Blockers & Issues
- [Any identified blockers or issues]
- [Dependencies waiting on external factors]

### Upcoming Milestones
- **Next Parent Task Completion**: Task 3.0 (X sub-tasks remaining)
- **Next Project Completion**: [Feature name] (X% complete)

## Statistics
- **Most Active Project**: [Project name] (X recent completions)
- **Completion Velocity**: [Tasks completed per day/week if trackable]
- **Stalled Projects**: [Projects with no recent progress]
```

## Analysis Rules

### Progress Calculation
```
Parent Task Progress = (Completed Sub-tasks / Total Sub-tasks) * 100
Overall Progress = (Completed Tasks / Total Tasks) * 100
```

### Status Determination
- **Active**: Has incomplete tasks and recent activity
- **On Hold**: Has incomplete tasks but no recent activity  
- **Completed**: All tasks marked as complete
- **Stalled**: Has blocking issues or dependencies

### Priority Assessment
- **High**: Blocking other work or critical path items
- **Medium**: Normal development flow items
- **Low**: Nice-to-have or future enhancements

## Multi-Project Management

### When Multiple Task Lists Exist
1. **Group by priority** or dependency relationships
2. **Identify critical path** items across projects
3. **Highlight resource conflicts** if working on multiple features
4. **Recommend focus area** based on business priority

### Cross-Project Dependencies
- **Identify shared files** or components
- **Track dependency chains** between projects
- **Warn about potential conflicts** in parallel development

## Integration with Other Commands

### Relationship to Other Commands
- **Feeds `/next-task`**: Provides context for next task selection
- **Updated by `/complete-task`**: Reflects latest completions
- **Informs `/generate-tasks`**: Shows capacity for new work
- **Supports `/update-relevant-files`**: Shows file creation progress

### Workflow Integration
1. Use `/task-status` to understand current state
2. Use `/next-task` to identify specific work item  
3. Complete work and use `/complete-task` to mark progress
4. Return to `/task-status` for updated overview

## Reporting Frequency
- **Daily**: For active development periods
- **Weekly**: For project status meetings
- **On-demand**: When switching contexts or priorities
- **Before planning**: When considering new features or PRDs