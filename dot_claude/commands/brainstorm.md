For the development of a new software feature, we will create a detailed product/feature requirements document (PRD). This document will be structured in a way that allows for easy understanding by a junior product manager.

# Process
Follow these steps:
1. Analyze the relevant parts of the code base for the proposed idea.
2. Ask me one question at a time so we can develop a thorough, step-by-step requirements for this idea. Each question should build on my previous answers, and our end goal is to have a detailed requirements document (see below for the template) I can hand off to a product manager. Let’s do this iteratively and dig into every relevant detail. Remember, only one question at a time.
3. Once we are done, **THINK** and review the requirements. Ask additional questions.
4. Once all questions after the review are answered, create the requirements file 'req-[function-name].md' in the '/reqs/' folder

# PRD Structure
Do not add implemenation details. The requirements should be structured in a way, that I can create tasks in a separate prompt.

## PRD Template
Use this as a template:
```
# Product Requirements Document Template: [Feature Name]

> **Instructions**: Replace [Feature Name] with your specific feature. Use this template to create comprehensive PRDs that focus on business value and user needs rather than technical implementation details.

## 1. Business Overview

### 1.1 Purpose
> **Guidance**: Clearly state what the feature does and why it's needed. Focus on the business problem being solved.

[Describe the main purpose and business problem this feature addresses. Explain how it fits into the broader product strategy.]

### 1.2 Business Objectives
> **Guidance**: List 3-5 measurable business goals. Use action verbs like "Reduce", "Improve", "Enhance", "Minimize", "Simplify".

- **[Objective Category]**: [Specific measurable outcome]
- **[Objective Category]**: [Specific measurable outcome]
- **[Objective Category]**: [Specific measurable outcome]
- **[Objective Category]**: [Specific measurable outcome]
- **[Objective Category]**: [Specific measurable outcome]

### 1.3 Target Users
> **Guidance**: Define primary user personas who will interact with this feature. Include their roles, responsibilities, and relevant context.

- **[User Role 1]**: [Description of responsibilities and how they'll use the feature]
- **[User Role 2]**: [Description of responsibilities and how they'll use the feature]
- **[User Role 3]**: [Description of responsibilities and how they'll use the feature]

## 2. User Stories

### 2.1 Primary User Stories
> **Guidance**: Write user stories in format "As a [user role], I want to [action] so that [benefit]". Focus on user goals, not implementation.

**As a [User Role], I want to:**
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]

**As a [User Role], I want to:**
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]

**As a [User Role], I want to:**
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]
- [Action/capability] so I can [benefit/outcome]

### 2.2 Detailed Use Cases
> **Guidance**: Describe 2-3 key workflows step-by-step. Include user actions, system responses, and expected outcomes.

#### Use Case 1: [Primary Workflow Name]
1. [User action or trigger]
2. [System response or next step]
3. [User action]
4. [System validation or processing]
5. [Final outcome or state]

#### Use Case 2: [Secondary Workflow Name]
1. [User action or trigger]
2. [System response or next step]
3. [User action]
4. [System validation or processing]
5. [Final outcome or state]

#### Use Case 3: [Alternative/Error Workflow Name]
1. [User action or trigger]
2. [System response or next step]
3. [User action]
4. [System validation or processing]
5. [Final outcome or state]

## 3. Functional Requirements

> **Guidance**: Use format "FR-XXX: System must [action] [object/condition]". Number sequentially (FR-001, FR-002, etc.). Group by functional area.

### 3.1 [Functional Area 1]
- **FR-001**: System must [specific requirement]
- **FR-002**: System must [specific requirement]
- **FR-003**: System must [specific requirement]
- **FR-004**: System must [specific requirement]
- **FR-005**: System must [specific requirement]

### 3.2 [Functional Area 2]
- **FR-006**: Interface must [specific requirement]
- **FR-007**: Interface must [specific requirement]
- **FR-008**: Interface must [specific requirement]
- **FR-009**: Interface must [specific requirement]
- **FR-010**: Interface must [specific requirement]
- **FR-011**: Interface must [specific requirement]
- **FR-012**: Interface must [specific requirement]

### 3.3 [Functional Area 3]
- **FR-013**: System must [specific requirement]
- **FR-014**: System must [specific requirement]
- **FR-015**: System must [specific requirement]
- **FR-016**: System must [specific requirement]
- **FR-017**: System must [specific requirement]

### 3.4 [Functional Area 4]
- **FR-018**: System must [specific requirement]
- **FR-019**: System must [specific requirement]
- **FR-020**: System must [specific requirement]
- **FR-021**: System must [specific requirement]
- **FR-022**: System must [specific requirement]

## 4. Non-Functional Requirements

> **Guidance**: Include measurable criteria where possible. Use specific numbers for performance, time limits, accuracy, etc.

### 4.1 Performance
- **NFR-001**: [Operation] must [complete/respond] within [X seconds/time]
- **NFR-002**: [Data operation] must [complete] within [X seconds]
- **NFR-003**: [User action] must [begin/respond] within [X seconds] of [trigger]
- **NFR-004**: [Real-time feature] must update at minimum [X Hz/frequency]

### 4.2 Usability
- **NFR-005**: Interface must be operable by users with [skill level/training requirement]
- **NFR-006**: [Common operation] must require maximum [X clicks/steps]
- **NFR-007**: Error messages must be [clear and actionable/specific quality]
- **NFR-008**: All functions must be accessible through [interaction method]

### 4.3 Reliability
- **NFR-009**: [Critical data] must be preserved during [failure scenario]
- **NFR-010**: System must recover gracefully from [error condition]
- **NFR-011**: [Invalid input/data] must not [cause system failure]
- **NFR-012**: [Validation system] must catch [X%] of [error condition]

### 4.4 Safety
- **NFR-013**: All [critical operations] must be preceded by [safety measure]
- **NFR-014**: System must prevent [specific risk/conflict]
- **NFR-015**: [Validation system] must never allow [unsafe condition]
- **NFR-016**: [Safety trigger] must immediately [protective action]

## 5. User Experience Requirements

> **Guidance**: Focus on interface design principles, workflow efficiency, and information presentation. Be specific about visual and interaction expectations.

### 5.1 Interface Design
- **UX-001**: Interface must follow [existing design system/patterns]
- **UX-002**: Controls must be [organized/grouped] by [logic/function]
- **UX-003**: [Current state/selection] must be clearly [highlighted/indicated]
- **UX-004**: [Input validation] must provide [immediate/type] visual feedback
- **UX-005**: [Control states] must clearly indicate [available actions/status]

### 5.2 Workflow Design
- **UX-006**: [Common operations] must be accessible within [X clicks/steps]
- **UX-007**: [Primary workflow] must be intuitive for [target users]
- **UX-008**: Error recovery must provide clear [next steps/guidance]
- **UX-009**: [Confirmation dialogs] must show [relevant information]

### 5.3 Information Display
- **UX-010**: [Critical information] must be [continuously/always] visible
- **UX-011**: [Reference information] must be displayed as [context/format]
- **UX-012**: [Validation errors] must be [immediately/clearly] visible
- **UX-013**: [System status] must be clearly communicated

## 6. Success Criteria

> **Guidance**: Define measurable outcomes that indicate successful implementation. Include operational metrics, user adoption, and system performance measures.

### 6.1 Operational Metrics
- **SC-001**: [Process/operation] [time/efficiency] [improved by X%] compared to [baseline]
- **SC-002**: [Accuracy/precision] within [±X units/tolerance] of [standard/target]
- **SC-003**: Zero [specific type] incidents during [time period/operation]
- **SC-004**: [X%] of [users] can [complete task] within [time] of [training/introduction]

### 6.2 User Adoption
- **SC-005**: [X%] of [target users] use [feature] within [timeframe]
- **SC-006**: Less than [X%] of [user actions] require [correction/intervention]
- **SC-007**: [Support metric] reduced by [X%]

### 6.3 System Performance
- **SC-008**: System availability of [X%] during [operational period]
- **SC-009**: [Data integrity] maintained across [all system operations]
- **SC-010**: All [operations] complete within [specified performance limits]

## 7. Dependencies & Constraints

> **Guidance**: List technical dependencies, business constraints, and operational limitations that impact implementation or usage.

### 7.1 Technical Dependencies
- **DEP-001**: Requires [existing system/component] and [specific functionality]
- **DEP-002**: Depends on [technology/library/service] for [capability]
- **DEP-003**: Requires [external dependency] for [specific function]
- **DEP-004**: Integration with [existing system] and [specific patterns/methods]

### 7.2 Business Constraints
- **CON-001**: Implementation must not [disrupt/impact] [existing operations]
- **CON-002**: [Training/learning] time must not exceed [time limit]
- **CON-003**: [Configuration changes] must not require [system downtime/restart]
- **CON-004**: Solution must work with [current infrastructure/hardware]

### 7.3 Operational Constraints
- **CON-005**: [Configuration/settings] must be [configurable/manageable] by [role/system]
- **CON-006**: [Data/information] must be stored [locally/method] ([rationale])
- **CON-007**: [Interface/access] must be [accessible/usable] by [multiple users/constraint]
- **CON-008**: System must handle [operational model/constraint]

## 8. Implementation Priorities

> **Guidance**: Break implementation into phases. Start with MVP (minimum viable product), then enhanced features, then future enhancements.

### 8.1 Phase 1 (MVP)
- [Core functionality 1]
- [Core functionality 2]
- [Basic interface requirements]
- [Essential validation/safety features]

### 8.2 Phase 2 (Enhanced)
- [Enhanced user experience features]
- [Advanced functionality]
- [Improved validation and error handling]
- [Performance optimizations]

### 8.3 Phase 3 (Future)
- [Advanced features]
- [Integration capabilities]
- [Enhanced reporting/analytics]
- [Scalability improvements]

## 9. Risk Assessment

> **Guidance**: Identify high-risk items that could impact safety, functionality, or user adoption. Include mitigation strategies.

### 9.1 High-Risk Items
- **RISK-001**: [Specific risk] could [negative outcome/impact]
- **RISK-002**: [Technical risk] could [system impact]
- **RISK-003**: [User/operational risk] could [business impact]

### 9.2 Mitigation Strategies
- **MIT-001**: [Strategy to address RISK-001]
- **MIT-002**: [Strategy to address RISK-002]
- **MIT-003**: [Strategy to address RISK-003]

## 10. Acceptance Criteria

> **Guidance**: Create specific, testable criteria for determining when the feature is complete. Use checkbox format for easy tracking.

### 10.1 Core Functionality
- [ ] [Users] can [perform core action 1] through [method/interface]
- [ ] [Users] can [perform core action 2] through [method/interface]
- [ ] System prevents [unsafe/invalid action] through [validation method]
- [ ] [Critical operations] require [safety/confirmation measure]
- [ ] [Data/settings] persist across [system operations]

### 10.2 User Interface
- [ ] All [feature functions] accessible through [dedicated interface/method]
- [ ] [Real-time information] updates [continuously/as specified]
- [ ] [Input validation] provides [immediate visual feedback]
- [ ] Interface follows [existing design patterns/standards]

### 10.3 Safety & Reliability
- [ ] [X%] of [invalid conditions] are caught by validation
- [ ] [Safety condition] immediately [triggers protective action]
- [ ] System handles [error conditions] gracefully
- [ ] All [critical operations] can be safely [interrupted/cancelled]
```

## Template Usage Notes

### How to Use This Template:
1. **Replace all [placeholders]** with feature-specific content
2. **Customize section titles** to match your feature's functional areas
3. **Adjust requirement numbering** as needed (maintain consistent format)
4. **Remove guidance text** (> blocks) before finalizing
5. **Add/remove sections** based on feature complexity

### Key Principles:
- **Focus on user value** rather than technical implementation
- **Use measurable criteria** wherever possible
- **Keep requirements specific** and testable
- **Prioritize safety and reliability** for industrial automation features
- **Consider all user roles** who will interact with the feature

### Quality Checklist:
- [ ] All functional requirements are testable
- [ ] Success criteria include measurable metrics
- [ ] User stories focus on user goals, not technical features
- [ ] Non-functional requirements include specific performance targets
- [ ] Safety requirements address relevant risk scenarios
- [ ] Acceptance criteria can be verified through testing

Here’s the idea: $ARGUMENTS
