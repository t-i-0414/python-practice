# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

This project uses `uv` as the package manager and requires Python 3.13.0 exactly.

### Common Commands
- Run tests: `uv run pytest`
- Run specific test: `uv run pytest tests/test_app.py::test_main_output`
- Lint code: `uv run ruff check`
- Format code: `uv run ruff format`
- Type check: `uv run mypy src/`
- Run application: `uv run python src/app.py`

### Development Setup
- Install dependencies: `uv sync`
- Install dev dependencies: `uv sync --group dev`

## Project Structure

This is a simple Python practice project with:
- `src/app.py`: Main application entry point
- `tests/`: Test files using pytest
- Uses pandas as core dependency
- Development tools: mypy, pytest, pytest-mock, ruff, pre-commit

## Code Quality Tools

- **Ruff**: Configured with line length 100, targeting Python 3.13
- **MyPy**: For static type checking with strict mode enabled
- **Pre-commit**: Hooks configured for code quality