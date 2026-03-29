<!-- Sync Impact Report
Version change: N/A → 1.0.0 (initial ratification)
Added sections:
  - Core Principles (I–VII)
  - Technology Constraints
  - Development Workflow
  - Governance
Removed sections: none
Templates requiring updates:
  - plan-template.md: ✅ aligned (Constitution Check section present)
  - spec-template.md: ✅ aligned (user stories, acceptance criteria present)
  - tasks-template.md: ✅ aligned (phased structure with checkpoints)
Follow-up TODOs: none
-->

# Patient Constitution

## Core Principles

### I. Feature-Based Architecture

Every feature MUST be organized into its own directory under `lib/features/`
with three mandatory sub-layers:

- `data/` — Models (`models/`) and repositories (`repos/`). All API
  communication and data transformation lives here.
- `logic/` — Cubits and their Freezed-generated state classes. Business
  logic MUST NOT reference UI widgets.
- `ui/` — Screens and private widget classes. UI code MUST NOT call API
  services directly; it communicates exclusively through Cubits.

**Rationale**: Strict layer separation keeps each feature independently
testable, navigable, and replaceable without cascading changes.

### II. BLoC/Cubit State Management (NON-NEGOTIABLE)

All mutable application state MUST be managed via `flutter_bloc` Cubits.

- Each Cubit MUST have a corresponding Freezed state class.
- Ephemeral-only UI state (e.g., animation controllers, form focus) MAY
  use local `StatefulWidget` state.
- Third-party state management packages (Riverpod, Provider, MobX, etc.)
  MUST NOT be introduced without an explicit constitution amendment.

**Rationale**: A single, well-understood state management pattern reduces
onboarding friction and prevents architectural fragmentation.

### III. Code Generation Discipline

The project relies on `build_runner` for `freezed`, `json_serializable`,
and `retrofit_generator`. The following rules apply:

- Generated files (`*.g.dart`, `*.freezed.dart`) MUST NOT be
  hand-edited.
- After modifying annotated source files, run
  `dart run build_runner build --delete-conflicting-outputs` before
  committing.
- All model classes that cross the network boundary MUST use
  `@JsonSerializable(fieldRename: FieldRename.snake)` for consistent
  JSON key mapping.

**Rationale**: Consistent code generation avoids serialization bugs and
ensures generated code stays in sync with its source.

### IV. Dependency Injection via GetIt

All non-trivial dependencies (API services, repositories, Cubits) MUST
be registered in `lib/core/di/dependency_injection.dart` using GetIt.

- Singletons (`registerLazySingleton`) for stateless services (Dio,
  ApiService, repos, TokenManager).
- Factories (`registerFactory`) for stateful objects (Cubits).
- Constructor injection MUST be used; Cubits and repos MUST NOT call
  `getIt` internally.

**Rationale**: Centralised DI makes the dependency graph explicit and
enables easy substitution during testing.

### V. Secure Token & Auth Handling

Authentication tokens MUST be stored using `flutter_secure_storage`.

- Access tokens and refresh tokens MUST NOT be persisted in
  `SharedPreferences` or plain files.
- The `TokenManager` class in `core/helpers/` is the single source of
  truth for token read/write operations.
- All authenticated API requests MUST attach tokens via a Dio
  interceptor, not manually per-call.

**Rationale**: Healthcare data is sensitive; token leakage is a critical
security risk.

### VI. Consistent Theming

All colours MUST be defined in `core/theming/app_colors.dart`. All text
styles MUST be defined in `core/theming/app_text_styles.dart`.

- Hard-coded colour values or text styles inside widget files are
  prohibited.
- The app MUST use `flutter_screenutil` for responsive sizing; raw pixel
  values MUST NOT appear in layout code.

**Rationale**: Centralised theming enables global design changes without
hunting through individual widgets.

### VII. Testing Standards

- Every new Cubit MUST have at least one unit test covering its primary
  success and failure states.
- Integration tests for critical user flows (login, sign-up) MUST use
  the Patrol framework already configured in the project.
- Widget tests SHOULD be written for reusable widgets in
  `lib/core/widgets/`.
- Tests MUST follow the Arrange–Act–Assert (Given–When–Then) pattern.

**Rationale**: A healthcare app demands confidence in correctness;
untested business logic is a liability.

## Technology Constraints

| Concern              | Mandated Choice                       |
|----------------------|---------------------------------------|
| Language/SDK         | Dart ≥ 3.10 / Flutter (latest stable) |
| State management     | `flutter_bloc` (Cubit)                |
| Networking           | `dio` + `retrofit`                    |
| Serialization        | `json_serializable` + `freezed`       |
| DI                   | `get_it`                              |
| Secure storage       | `flutter_secure_storage`              |
| Key-value storage    | `shared_preferences`                  |
| Responsive sizing    | `flutter_screenutil`                  |
| Linting              | `flutter_lints` (analysis_options.yaml)|
| Integration testing  | `patrol`                              |
| Target platforms     | Android, iOS                          |

Adding a package that duplicates a concern above (e.g., another HTTP
client) MUST be justified in a constitution amendment.

## Development Workflow

### Feature Development Process

1. **Specify** — Create a feature spec with user stories and acceptance
   criteria (`/speckit.specify`).
2. **Plan** — Produce an implementation plan (`/speckit.plan`). The plan
   MUST pass the Constitution Check gate (Principles I–VII).
3. **Task** — Break the plan into phased, dependency-aware tasks
   (`/speckit.tasks`).
4. **Implement** — Execute tasks in priority order. Each Cubit MUST have
   tests before the feature is considered complete.
5. **Verify** — Run `flutter analyze`, `dart format .`, and
   `dart run build_runner build --delete-conflicting-outputs`. All MUST
   pass with zero errors before merge.

### Code Quality Gates

- `flutter analyze` MUST report zero errors and zero warnings.
- `dart format .` MUST produce no changes (code is pre-formatted).
- Generated files MUST be up to date.
- No `// ignore:` annotations without an accompanying justification
  comment.

## Governance

This constitution supersedes ad-hoc decisions. All implementation plans
MUST pass a Constitution Check (see `plan-template.md`, §Constitution
Check) before development begins.

**Amendment procedure**:

1. Propose the change with rationale.
2. Update this document via `/speckit.constitution`.
3. Verify consistency across templates (plan, spec, tasks).
4. Increment the version following semver (MAJOR: principle
   removal/redefinition; MINOR: new principle or expanded guidance;
   PATCH: clarification or typo fix).

**Compliance review**: At each feature checkpoint, verify that new code
conforms to Principles I–VII. Non-conformance MUST be documented in the
plan's Complexity Tracking table with justification.

**Version**: 1.0.0 | **Ratified**: 2026-03-29 | **Last Amended**: 2026-03-29
