.PHONY: notebook docs
.EXPORT_ALL_VARIABLES:

install: 
	@echo "Installing... "
	conda env create --file env.yml
	@echo "Installing dependencies... "
	conda run pip install -r requirements.txt

activate:
	@echo "Activating virtual environment"
	conda activate comend_NN

initialize_git:
	git init 
	conda run pre-commit install 

pull_data:
	conda run pip run dvc pull

setup: initialize_git install

test:
	pytest

docs_view:
	@echo View API documentation... 
	pdoc src --http localhost:8080

docs_save:
	@echo Save documentation to docs... 
	pdoc src -o docs

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache