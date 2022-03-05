run:
	poetry run python manage.py runserver
DB:
	python3 manage.py makemigrations
	python3 manage.py migrate
generate-dependencies:
	poetry export --without-hashes -f requirements.txt --output requirements-dev.txt --dev
	poetry export --without-hashes -f requirements.txt --output requirements.txt
set-admin:
	poetry run python manage.py xreatesuperuser
test:
	poetry run python manage.py test
lint:
	poetry flake8 CONFIG



