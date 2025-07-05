# Rule: Intelligent Task Generation from Project Plans

## Goal

To guide an AI assistant in creating high-quality, contextually-aware tasks through intelligent multi-phase analysis. The system transforms project plans into implementable task lists using advanced reasoning, domain expertise, and quality validation while maintaining simplicity-first principles.

## Output

- **Format:** Markdown (`.md`)
- **Location:** `/tasks/`
- **Filename:** `tasks.md`

## Intelligent 4-Phase Process

### Phase 1: Context Gathering & Deep Analysis
1. **Project Context Detection:** Analyze project structure (package.json, go.mod, requirements.txt, etc.)
2. **Codebase Analysis:** Use `mcp__zen__analyze` with `gemini-pro` to understand:
   - Existing architecture patterns and conventions
   - Technology stack and framework usage
   - Code complexity and technical debt levels
   - Integration points and dependency relationships
3. **Plan Deep Analysis:** Use `mcp__zen__thinkdeep` with `gemini-pro` for comprehensive plan understanding and architectural implications

### Phase 2: Multi-Domain Expert Analysis (Subagent Specialization)
4. **Architecture Subagent:** Use `mcp__zen__analyze` for structural considerations and design patterns
5. **Security Subagent:** Use `mcp__zen__secaudit` thinking for security task identification and compliance requirements
6. **Performance Subagent:** Identify performance-critical implementation tasks and optimization opportunities
7. **Quality Subagent:** Apply YAGNI and simplicity principles to ensure minimal, clean implementations
8. **Integration Subagent:** Map dependencies, API integrations, and external service requirements

### Phase 3: Intelligent Task Synthesis
9. **Strategic Planning:** Use `mcp__zen__planner` with `gemini-pro` for optimal task breakdown and sequencing
10. **Dependency Mapping:** Identify and properly order task dependencies with critical path analysis
11. **Risk Assessment:** Assign complexity and risk levels to each task for better planning
12. **Simplicity Enforcement:** Ensure all tasks follow YAGNI and simplicity-first principles
13. **Task Optimization:** Generate 5-8 high-level tasks that are implementable, testable, and maintainable

### Phase 4: Quality Validation & Consensus
14. **Multi-Model Validation:** Use `mcp__zen__consensus` with `gemini-pro` to validate:
    - Task completeness and technical feasibility
    - Proper dependency ordering and critical path
    - Alignment with simplicity and YAGNI principles
    - Technical accuracy and implementability
15. **Quality Gates:** Verify each task meets quality criteria and project requirements
16. **Final Output Generation:** Create structured task list with detailed descriptions and metadata

## Output Format

The generated task list _must_ follow this structure:

```markdown
## Tasks

### 1.0 Task Title [Priority: High | Complexity: Medium | Risk: 2/3]
**Description:** Detailed description of what this task involves, its objectives, key considerations, and expected outcomes. Include technical details, architectural patterns, and integration requirements discovered during analysis.

**Dependencies:** None (or list of task IDs this depends on)
**Domain Focus:** Architecture/Security/Performance/Integration
**Simplicity Notes:** Specific guidance on maintaining simplest possible implementation
**Estimated Effort:** Time estimate based on complexity analysis
**Technical Considerations:** 
- Framework-specific implementation details
- Existing code patterns to follow
- Testing requirements and strategy
- Integration points and API considerations

### 2.0 Task Title [Priority: Medium | Complexity: Low | Risk: 1/3]
**Description:** [Same detailed structure as above]

**Dependencies:** Task 1.0
**Domain Focus:** [Domain identified by subagent analysis]
**Simplicity Notes:** [YAGNI guidance specific to this task]
**Estimated Effort:** [Based on analysis]
**Technical Considerations:**
- [Context-specific implementation guidance]
- [Existing patterns and conventions to follow]
- [Quality gates and validation requirements]
```

## Enhanced AI Instructions

When generating tasks from plans, the AI must execute all 4 phases systematically:

### Phase 1 Execution: Context & Analysis
1. **Project Detection:** Analyze project files to determine technology stack and architecture
2. **Deep Codebase Analysis:** Use `mcp__zen__analyze` with `gemini-pro` for comprehensive understanding
3. **Plan Analysis:** Use `mcp__zen__thinkdeep` with `gemini-pro` for architectural implications

### Phase 2 Execution: Subagent Analysis 
4. **Deploy Specialized Analysis:** Each domain expert (Architecture, Security, Performance, Quality, Integration) provides specific insights
5. **Consolidate Domain Findings:** Merge specialized insights into comprehensive understanding

### Phase 3 Execution: Intelligent Synthesis
6. **Strategic Planning:** Use `mcp__zen__planner` with `gemini-pro` for optimal task breakdown
7. **Apply Simplicity Principles:** Ensure every task follows YAGNI and simplest-possible-implementation
8. **Dependency & Risk Mapping:** Order tasks by dependencies and assess implementation risks

### Phase 4 Execution: Quality Validation
9. **Consensus Validation:** Use `mcp__zen__consensus` with `gemini-pro` for multi-model validation
10. **Quality Gates:** Verify completeness, feasibility, and alignment with project requirements
11. **Final Task Generation:** Create enhanced task format with metadata and technical guidance

### Zen Tool Model Specification
**MANDATORY:** All `mcp__zen__*` tools MUST use `gemini-pro` model:
- `mcp__zen__analyze` → `gemini-pro`
- `mcp__zen__thinkdeep` → `gemini-pro`
- `mcp__zen__planner` → `gemini-pro`
- `mcp__zen__consensus` → `gemini-pro`
- `mcp__zen__secaudit` → `gemini-pro`

### Simplicity-First Requirements
- **YAGNI Enforcement:** Only generate tasks for actually needed functionality
- **Minimal Implementation:** Each task should achieve goals with simplest possible approach
- **Code Quality Focus:** Prioritize readable, maintainable solutions over complex ones
- **No Over-Engineering:** Avoid unnecessary abstractions or premature optimizations

## Interaction Model

The enhanced process generates contextually-aware, high-level tasks with comprehensive metadata. Subtasks will be generated later during implementation by the `process-task-list.md` command when each high-level task is started.

## Target Audience

Assume the primary reader is a **developer** who needs specific, actionable guidance for implementation, including technical context, dependencies, and quality requirements.
