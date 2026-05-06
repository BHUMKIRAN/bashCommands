# Python Commands

## Python and Pip

```bash
python --version
python3 --version
python file.py
python3 file.py
pip --version
pip install package-name
pip install -r requirements.txt
pip freeze
pip freeze > requirements.txt
pip uninstall package-name
```

## Virtual Environments

```bash
python -m venv .venv
source .venv/bin/activate
deactivate
```

Windows:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
deactivate
```

## Django and Flask

```bash
django-admin startproject project_name
python manage.py runserver
flask --app app run
flask --debug --app app run
```

## Testing and Formatting

```bash
pytest
pytest -q
python -m unittest
black .
ruff check .
ruff check . --fix
```

