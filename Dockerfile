# Utiliser une image de base officielle Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de l'application dans le conteneur
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exposer le port sur lequel l'application va tourner
EXPOSE 5000

# Commande pour lancer l'application
CMD ["python", "app.py"]
