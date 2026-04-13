.PHONY: setup test lint format typecheck clean check

setup:
	uv sync --group dev

test:
	uv run pytest

test-cov:
	uv run pytest --cov=src

lint:
	uv run ruff check --fix

format:
	uv run ruff format

format-check:
	uv run ruff format --check

typecheck:
	uv run mypy .

check: lint format typecheck test

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	rm -rf build/ dist/ .coverage htmlcov/ .pytest_cache/ .mypy_cache/
