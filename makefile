# Makefile

# Define variables
CONDA_ENV_NAME := pred_maint_test
PYTHON_VERSION := 3.10
REQUIREMENTS_FILE := requirements.txt

# Define targets and dependencies
conda_env:
	conda create -n $(CONDA_ENV_NAME) python=$(PYTHON_VERSION)

install_requirements:
	conda activate $(CONDA_ENV_NAME)
	pip install -r $(REQUIREMENTS_FILE)
	conda install -n pred_maint_test ipykernel --update-deps --force-reinstall

full_setup: conda_env install_requirements