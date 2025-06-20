# /update-relevant-files Command

## Usage
`/update-relevant-files` - Refresh the relevant files section

## Purpose
Systematically update the "Relevant Files" section in task list files to reflect current project state, including newly created files, modified files, and accurate descriptions.

## When to Use
- After completing several sub-tasks that created new files
- When file purposes or descriptions have changed
- During project cleanup or maintenance
- Before project status reviews
- When file organization has been refactored

## Workflow Process

### Step 1: Identify Target Task List
1. **Find the active task list file** in `/tasks/` directory
2. **If multiple exist**, ask user which one to update
3. **Read current "Relevant Files" section**

### Step 2: Scan Project Files
1. **Identify all files created/modified** since task list creation
2. **Check file modification timestamps** against task progress
3. **Analyze file content** to understand current purpose
4. **Group files by functionality** or component area

### Step 3: Categorize Files
Organize files into categories:

#### Source Files
- Implementation files (.ts, .tsx, .js, .jsx, .py, .cpp, etc.)
- Component files
- Service/utility files
- Configuration files

#### Test Files  
- Unit test files (.test.ts, .spec.js, etc.)
- Integration test files
- Test utilities and fixtures

#### Documentation Files
- README files
- API documentation
- Component documentation
- Architecture notes

#### Configuration Files
- Build configuration
- Environment settings
- Package management files

### Step 4: Generate Updated Section

## Output Format

```markdown
## Relevant Files

### Source Files
- `src/components/UserLogin.tsx` - User authentication login component
- `src/services/AuthService.ts` - Authentication service with token management
- `src/utils/ValidationUtils.ts` - Form validation utility functions
- `src/types/UserTypes.ts` - TypeScript interfaces for user data

### Test Files
- `src/components/UserLogin.test.tsx` - Unit tests for login component
- `src/services/AuthService.test.ts` - Unit tests for authentication service
- `src/utils/ValidationUtils.test.ts` - Unit tests for validation utilities

### Configuration Files
- `jest.config.js` - Jest testing configuration
- `tsconfig.json` - TypeScript compiler configuration
- `package.json` - Project dependencies and scripts

### Documentation
- `docs/authentication.md` - Authentication system documentation
- `README.md` - Project setup and usage instructions

### Notes

- Unit tests should be placed alongside code files
- Use `npx jest [optional/path/to/test/file]` to run tests
- Running without path executes all tests found by Jest configuration
- Configuration files are shared across components
```

## File Description Guidelines

### Format Pattern
`path/to/file.ext` - [Brief, specific description of purpose]

### Good Description Examples
- ✅ `UserLogin.tsx` - User authentication login component with form validation
- ✅ `AuthService.ts` - Authentication service with JWT token management
- ✅ `api-client.ts` - HTTP client wrapper with error handling and retries

### Poor Description Examples  
- ❌ `UserLogin.tsx` - Login stuff
- ❌ `AuthService.ts` - Service file
- ❌ `api-client.ts` - API things

### Description Rules
1. **Be specific** about the file's primary purpose
2. **Mention key functionality** or features
3. **Keep it to one line** (under 80 characters)
4. **Use active language** ("handles", "manages", "provides")
5. **Avoid generic terms** ("helper", "utility" without context)

## File Organization Rules

### Grouping Strategy
1. **Group by type first** (source, tests, config, docs)
2. **Then by functionality** within each type
3. **Maintain alphabetical order** within groups
4. **Show clear relationships** between source and test files

### Path Formatting
- Use **relative paths** from project root
- Use **forward slashes** consistently
- **Include file extensions** for clarity
- **Use consistent casing** as in actual filesystem

## Maintenance Tasks

### Regular Updates
- **After major feature completion** (parent task done)
- **Weekly during active development**
- **Before project milestones or reviews**
- **When file organization changes**

### Quality Checks
- [ ] All actively used files are listed
- [ ] Descriptions are accurate and current
- [ ] Test files match source files
- [ ] Paths are correct and accessible
- [ ] No obsolete or deleted files listed

## Integration with Task Workflow

### Relationship to Task Completion
- **Automatically trigger** after `/complete-task` if new files created
- **Reference during** `/next-task` to verify dependencies
- **Include in** `/task-status` for comprehensive project view

### File Creation Tracking
- **Track new files** created during sub-task implementation
- **Update descriptions** when file purposes evolve
- **Remove files** that are deleted or become obsolete
- **Add files** discovered during code exploration

## Output Actions
After generating the updated section:

1. **Show the updated "Relevant Files" section**
2. **Highlight changes made** (added/removed/modified descriptions)
3. **Update the task list file** with new content
4. **Confirm update completion**

```markdown
## Files Section Updated

### Changes Made:
- **Added**: 3 new source files, 2 new test files
- **Updated**: 4 file descriptions for accuracy
- **Removed**: 1 obsolete configuration file

### Summary:
- **Total Files**: X source, Y test, Z config, W documentation
- **Coverage**: X% of source files have corresponding tests
- **Last Updated**: [Current timestamp]

Relevant files section updated successfully.
```