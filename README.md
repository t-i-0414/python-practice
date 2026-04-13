# python-practice

Python project boilerplate with modern tooling.

## Tech Stack

- **Runtime**: Python 3.13+
- **Package Manager**: [uv](https://docs.astral.sh/uv/)
- **Linter / Formatter**: [Ruff](https://docs.astral.sh/ruff/)
- **Type Checker**: [mypy](https://mypy-lang.org/) (strict mode)
- **Testing**: [pytest](https://docs.pytest.org/)
- **CI**: GitHub Actions

## Setup

```bash
make setup
```

## Commands

| Command | Description |
|---------|-------------|
| `make test` | Run tests |
| `make test-cov` | Run tests with coverage |
| `make lint` | Lint check |
| `make fix` | Auto-fix lint + format |
| `make format` | Format code |
| `make typecheck` | Type check with mypy |
| `make check` | Run all checks (CI equivalent) |
| `make clean` | Remove build artifacts and caches |

## Project Structure

```
.
├── src/          # Application source code
├── tests/        # Test files
├── pyproject.toml
├── Makefile
└── .github/workflows/ci.yml
```
