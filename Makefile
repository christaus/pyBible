all: clean init doc setup pycache

init:
	@echo "Entering setup"
	@echo "Generating virtual environment"
	python3 -m virtualenv -p python3 venv
	venv/bin/python3 -m pip install -r requirements.txt

setup:
	venv/bin/python3 Setup_GUI.py

clean:
	@echo "Entering clean"
	@echo "Cleaning"
	rm -rvf __pycache__
	rm -rvf venv
	rm -rvf docs/build

pycache:
	@echo "Removing __pycache__"
	rm -rvf __pycache

doc:
	@echo "Generating documentation"
	venv/bin/sphinx-build -M html docs/source docs/build
