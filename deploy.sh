#!/bin/bash

# Beendet das Skript sofort, wenn ein Befehl fehlschlägt
set -e

KUBERNETES_DIR="./kubernetes"       # Pfad zum Ordner mit Kubernetes-YAML-Dateien
IMAGE_BACKEND="todo-backend"        # Name des Backend-Docker-Images
IMAGE_FRONTEND="todo-frontend"      # Name des Frontend-Docker-Images
IMAGE_TAG="1.0.0"                   # Image-Tag, z. B. für Versionsverwaltung

# Prüft, ob 'kubectl' installiert ist und verfügbar ist
if ! command -v kubectl &> /dev/null; then
  echo "'kubectl' ist nicht installiert."
  exit 1
fi

echo "Baue Backend mit Maven..."

# Wechselt ins Unterverzeichnis "backend", wo sich die pom.xml und der Quellcode befinden
cd backend

# Führt den Maven-Befehl aus, um das Projekt zu bauen und überspringt alle Unit-Tests
mvn clean package -DskipTests

# Wechselt zurück ins ursprüngliche Verzeichnis (z. B. zum Root-Projektordner mit docker-compose.yml)
cd ..
docker compose build # Baut die Docker-Images basierend auf der docker-compose.yml und Verwendet die Dockerfiles in ./backend und ./frontend
docker compose down # Stoppt und entfernt laufende Container aus vorherigen Durchläufen
docker compose up -d # Startet die Container im Hintergrund ("detached mode")

docker tag "$IMAGE_BACKEND:latest" "$IMAGE_BACKEND:$IMAGE_TAG" # Erstellt ein Tag für das Backend-Image
docker tag "$IMAGE_FRONTEND:latest" "$IMAGE_FRONTEND:$IMAGE_TAG" # Erstellt ein Tag für das Frontend-Image

kubectl apply -f "$KUBERNETES_DIR" # Wendet alle Konfigurationen in ./kubernetes an
kubectl set image deployment/backend-deployment backend=$IMAGE_BACKEND:$IMAGE_TAG # Aktualisiert das Image im "backend-deployment" auf die neue Version
kubectl set image deployment/frontend-deployment frontend=$IMAGE_FRONTEND:$IMAGE_TAG # Aktualisiert das Image im "frontend-deployment" auf die neue Version

echo "Deployments erfolgreich aktualisiert!"
