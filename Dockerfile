FROM python:3.9.8
WORKDIR /box

# Copie uniquement le fichier requirements.txt d'abord pour profiter du cache Docker
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copie le reste du répertoire de l'application
COPY . .

# Point d'entrée pour l'application
ENTRYPOINT ["python3", "app.py"]

