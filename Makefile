
SHELL := /bin/bash

setup: 
	python3 -m venv .venv && source .venv/bin/activate

install:
	python3 -m pip install --upgrade pip 
	python3 -m pip install -r requirements.txt  

lint:
	pylint src
	pylint --disable=R,C tests/*.py

test:
	pytest -vv --cov=tests tests

