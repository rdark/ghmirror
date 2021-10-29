.PHONY: test clean bootstrap
package = ghmirror

# test
test:
	mypy $(package)

# remove pyc & __pycache__ files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

bootstrap:
	pip install -r requirements-test.txt