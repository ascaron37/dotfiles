# /create-test Command

## Usage
`/create-test <filename>` - Create corresponding test file

## Purpose
Generate a comprehensive test file for a specified source file, following project testing conventions and ensuring proper test coverage.

## When to Use
- After creating a new source file that needs testing
- When implementing a sub-task that requires test coverage
- During TDD (Test-Driven Development) workflow
- When updating existing files that lack adequate tests

## Workflow Process

### Step 1: Analyze Source File
1. **Read the specified source file** completely
2. **Identify key functions, classes, and methods** to test
3. **Understand dependencies and imports** needed for testing
4. **Determine testing complexity** and required test patterns

### Step 2: Determine Test File Location
Follow project conventions:
- **Same directory**: Place `.test.ts` alongside source file
- **Tests directory**: Use `tests/` directory structure if project uses it
- **Mirror structure**: Maintain same folder hierarchy in test directory

### Step 3: Analyze Testing Framework
Check project for existing testing setup:
- **Jest**: Look for `jest.config.js` or Jest in `package.json`
- **Pytest**: Look for `pytest.ini` or pytest dependencies
- **Other frameworks**: Check project dependencies and existing test files

### Step 4: Generate Test File

## Test File Structure Template

### For JavaScript/TypeScript (Jest):
```typescript
import { [functions/classes to test] } from './[source-file]';
// Additional imports for testing utilities, mocks, etc.

describe('[Component/Service/Function Name]', () => {
  // Setup and teardown
  beforeEach(() => {
    // Common setup
  });

  afterEach(() => {
    // Cleanup
  });

  describe('[Function/Method Group]', () => {
    it('should [expected behavior] when [condition]', () => {
      // Arrange
      const input = [test data];
      const expected = [expected result];

      // Act
      const result = functionToTest(input);

      // Assert
      expect(result).toBe(expected);
    });

    it('should handle [edge case] correctly', () => {
      // Test edge cases
    });

    it('should throw error when [invalid condition]', () => {
      // Test error conditions
    });
  });
});
```

### For Python (Pytest):
```python
import pytest
from [module] import [function/class to test]

class Test[ClassName]:
    def setup_method(self):
        """Setup for each test method."""
        pass

    def test_[function_name]_[expected_behavior](self):
        """Test [function] returns [expected] when [condition]."""
        # Arrange
        input_data = [test data]
        expected = [expected result]
        
        # Act
        result = function_to_test(input_data)
        
        # Assert
        assert result == expected

    def test_[function_name]_handles_edge_case(self):
        """Test [function] handles [edge case] correctly."""
        pass

    def test_[function_name]_raises_exception(self):
        """Test [function] raises exception when [condition]."""
        with pytest.raises(ExceptionType):
            function_to_test(invalid_input)
```

## Test Coverage Guidelines

### What to Test
1. **Happy path scenarios** - Normal, expected usage
2. **Edge cases** - Empty inputs, boundary values, unusual but valid inputs
3. **Error conditions** - Invalid inputs, exception handling
4. **Integration points** - How components interact
5. **Public API** - All public methods and functions

### Test Naming Conventions
- **Descriptive names**: `test_calculate_total_returns_sum_of_items`
- **Pattern**: `test_[function]_[expected_behavior]_[condition]`
- **Clear intent**: Anyone should understand what's being tested

### Test Organization
- **Group related tests** using `describe` blocks (Jest) or classes (Pytest)
- **One assertion per test** when possible
- **Arrange-Act-Assert pattern** for clarity
- **Setup/teardown** for common test data

## Technology-Specific Considerations

### For JavaScript/TypeScript Projects
- **Mock external dependencies** using Jest mocks
- **Test async functions** with proper async/await patterns
- **Component testing** with testing-library for React/Angular
- **API testing** with supertest or similar tools

### For Python Projects
- **Use fixtures** for complex test data setup
- **Mock external services** with unittest.mock or pytest-mock
- **Test async code** with pytest-asyncio
- **Database testing** with in-memory databases when possible

### For C++ Projects
- **Use Google Test** or Catch2 framework
- **Test memory management** and resource cleanup
- **Mock dependencies** with Google Mock
- **Performance testing** for critical algorithms

### For C# Projects
- **Use xUnit or NUnit** framework
- **Mock with Moq** or similar frameworks
- **Test async methods** properly
- **Integration testing** with TestServer

## Mock Strategy

### When to Mock
- **External APIs** and services
- **Database connections** 
- **File system operations**
- **Time-dependent code**
- **Complex dependencies** that are tested elsewhere

### When NOT to Mock
- **Simple data structures** or value objects
- **Pure functions** without side effects
- **Internal business logic** that should be tested together
- **Database queries** (use in-memory DB instead)

## Output Format

After creating the test file:

```markdown
## Test File Created: `[test-file-path]`

### Source File: `[source-file-path]`
### Testing Framework: [Jest/Pytest/etc.]

### Test Coverage Includes:
- ✅ [X] Happy path scenarios
- ✅ [X] Edge cases identified
- ✅ [X] Error conditions
- ✅ [X] Public methods/functions

### Test Structure:
- **Setup/Teardown**: [Description of common setup]
- **Test Groups**: [X] describe blocks / test classes
- **Individual Tests**: [X] test cases
- **Mocked Dependencies**: [List of mocked components]

### Next Steps:
1. Run tests: `[command to run tests]`
2. Verify all tests pass
3. Add additional test cases as needed
4. Update task list with test file completion

### Commands to Run Tests:
```bash
# Run specific test file
[specific command for this test file]

# Run all tests
[command to run all project tests]
```
```

## Integration with Task Workflow

### Automatic Test Creation
- **Trigger during sub-task** completion if source file created
- **Include in task requirements** when planning implementation tasks
- **Update relevant files section** with new test file

### Test-Driven Development Support
- **Create test file first** before implementation
- **Write failing tests** that define expected behavior
- **Implement source code** to make tests pass
- **Refactor** while maintaining test coverage

## Quality Assurance

### Test File Checklist
- [ ] Tests cover all public functions/methods
- [ ] Edge cases and error conditions included
- [ ] Proper setup and teardown implemented
- [ ] Mocks used appropriately for external dependencies
- [ ] Test names are clear and descriptive
- [ ] Tests are independent and can run in any order
- [ ] All tests pass when run

### Maintenance
- **Update tests** when source code changes
- **Add tests** for new functionality
- **Remove obsolete tests** when code is deleted
- **Refactor tests** to maintain clarity and effectiveness