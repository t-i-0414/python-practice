.PHONY: setup test lint format typecheck clean

setup:
	uv sync --group dev
	uv run pre-commit install

test:
	uv run pytest

test-cov:
	uv run pytest --cov=src

lint:
	uv run ruff check

format:
	uv run ruff format

typecheck:
	uv run mypy .

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	rm -rf build/ dist/ .coverage htmlcov/ .pytest_cache/ .mypy_cache/
