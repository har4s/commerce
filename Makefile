VENV = .venv
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
DJANGO_ROOT = commerce

#
run:
	${PYTHON} manage.py runserver

lock:
	${PIP} freeze > requirements.txt

# FORMATING
format:
	${PYTHON} -m autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place ${DJANGO_ROOT} --exclude=__init__.py,migrations,settings.py
	${PYTHON} -m isort ${DJANGO_ROOT} --profile black
	${PYTHON} -m black ${DJANGO_ROOT}
