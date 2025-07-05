# Task List Management

Guidelines for managing task lists in markdown files to track progress on implementing a project plan with intelligent subtask generation

## Task Types

### High-Level Tasks
High-level tasks are defined with `### X.0 Title` format and include a description. These are the main implementation phases.

### Subtasks  
Subtasks are generated dynamically when starting a high-level task and follow TDD principles.

## Task Implementation Workflow

### Starting a High-Level Task
When the next task is a high-level task (format: `### X.0 Title`):

1. **Deep Codebase Analysis:** Use `mcp__zen__analyze` with `gemini-pro` model to systematically analyze the current codebase structure, patterns, dependencies, and architectural context
2. **Intelligent Task Planning:** Use `mcp__zen__planner` with `gemini-pro` model to break down the task into optimal subtasks considering:
   - Code simplicity and YAGNI principles
   - Dependencies and ordering constraints  
   - Risk assessment and complexity estimation
   - TDD workflow integration
3. **Simplicity-First Subtask Generation:** Create subtasks that prioritize:
   - **Simplest possible implementation** - no over-engineering
   - **Minimal code changes** to achieve the goal
   - **Clean, readable, maintainable solutions** over clever ones
   - Test-driven development principles
4. **Update Todo List:** Add all generated subtasks to the TodoWrite tool
5. **Add Subtasks to Markdown File:** Add subtasks as markdown checkboxes under the high-level task:
   ```markdown
   ### 1.0 Feature Implementation [IN PROGRESS]
   - [ ] Write failing test for feature X
   - [ ] Implement minimal code for feature X  
   - [ ] Refactor implementation if needed
   ```
5. **Mark High-Level Task as Started:** Add `[IN PROGRESS]` marker to the high-level task
6. **Begin First Subtask:** Start with the first generated subtask

### Working on Subtasks
- **One sub-task at a time:** Do **NOT** start the next sub‑task until you ask the user for permission and they say "yes" or "y"
- **TDD Protocol:** Each subtask should follow the test-driven development cycle
- **Next Task Selection:** Find the first subtask without `[x]` (still showing `[ ]`) as the next task to work on
- **Completion protocol:**  
  1. When you finish a **sub‑task**, immediately:
     - Mark it as completed in TodoWrite
     - Update the markdown checkbox from `[ ]` to `[x]`
  2. If **all** subtasks for a high-level task are completed, mark the **high-level task** as completed
- Stop after each sub‑task and wait for the user's go‑ahead

## Task List Maintenance

1. **Update the task list as you work:**
   - Mark high-level tasks with `[IN PROGRESS]` when started
   - Mark high-level tasks with `[COMPLETED]` when all subtasks are done
   - Use TodoWrite tool to track subtask progress
   - Update markdown checkboxes: `[ ]` for incomplete, `[x]` for completed subtasks

2. **Subtask Generation Guidelines:**
   - **Simplicity First:** Always prefer the simplest solution that works
   - **YAGNI Principle:** Only implement what's actually needed, nothing more
   - **Test-first approach:** Write tests before implementation
   - **Minimal viable increments:** Break down into smallest meaningful pieces
   - **Clean code priority:** Readable and maintainable over clever or complex
   - **Dependency awareness:** Order subtasks based on dependencies
   - **Risk-based planning:** Address high-risk/complex areas early
   - Consider edge cases and error handling only when necessary

## AI Instructions

When working with task lists, the AI must:

1. **Detect Task Type:** Determine if the next task is high-level (needs subtask generation) or a regular subtask

2. **For High-Level Tasks:**
   - **Deep Analysis:** Use `mcp__zen__analyze` with `gemini-pro` model for comprehensive codebase understanding
   - **Intelligent Planning:** Use `mcp__zen__planner` with `gemini-pro` model for optimal task decomposition  
   - **Simplicity Enforcement:** Ensure all subtasks prioritize simple, clean, maintainable solutions
   - **YAGNI Compliance:** Generate only necessary subtasks, avoid over-engineering
   - **Dependency Mapping:** Identify and properly order subtask dependencies
   - Update TodoWrite with all subtasks including priority and complexity estimates
   - Add subtasks as markdown checkboxes under the high-level task
   - Mark high-level task as `[IN PROGRESS]`

3. **For Subtasks:**
   - **Simplicity First:** Always choose the simplest working solution
   - Follow TDD protocol (test first, minimal implementation, refactor only if needed)
   - **Code Quality Focus:** Prioritize readability and maintainability
   - Update TodoWrite when completed
   - Update markdown checkbox from `[ ]` to `[x]` when completed
   - Wait for user approval before next subtask

4. **Advanced Reasoning Integration:**
   - Use `mcp__zen__thinkdeep` with `gemini-pro` for complex problem analysis when needed
   - All zen tools must use `gemini-pro` model for consistency
   - Leverage deep thinking capabilities for architectural decisions

5. **Track Progress:** Regularly update both the markdown task file and TodoWrite tool
6. **Completion:** Mark high-level tasks as `[COMPLETED]` when all subtasks are done

### Zen Tool Model Specification
**IMPORTANT:** All `mcp__zen__*` tools MUST use the `gemini-pro` model:
- `mcp__zen__analyze` → `gemini-pro`
- `mcp__zen__planner` → `gemini-pro`  
- `mcp__zen__thinkdeep` → `gemini-pro`
- Any other zen tools → `gemini-pro`