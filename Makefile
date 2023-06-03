.PHONY: format

build:
	poetry build

bump-patch:
	poetry version patch

publish: bump-patch build
	poetry publish

format:
	poetry run isort .
	poetry run black .
	poetry run flake8 .
