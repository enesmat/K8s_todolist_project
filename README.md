# K8s_todolist_project
Aufgabe:
Kubernetes Projekt
Sachverhalt:
Nach Abschluss der Weiterbildung arbeiten Sie nun bei der Borngraben IT Dienstleistung Services GmbH. Ihr Kollege, Günther Siegfried, ein Softwareentwickler, hat Ihnen eine To-Do-Liste gegeben. Günther hat nicht das nötige Wissen im Bereich DevOps, weshalb er Sie als DevOps Engineer gebeten hat, ihm bei der Umsetzung zu helfen. Ihre Aufgabe ist es, ihm zu assistieren und die folgenden Schritte zu erledigen.
Aufgaben:
1. To-Do-Liste erstellen:
- Das Frontend ist bereits in Vanilla JavaScript geschrieben. Es besteht aus einer einfachen To-Do-Liste, in der Aufgaben hinzugefügt und angezeigt werden können.
- Das Backend ist mit Java, Spring Boot, und Maven entwickelt. Das Backend dient lediglich zu Logging-Zwecken, um die hinzugefügten Aufgaben zu protokollieren.
2. Dockerfiles für Frontend und Backend:
- Erstelle Dockerfiles, um sowohl das Frontend als auch das Backend in Docker-Containern zu verpacken.
  - Das Frontend wird mit Nginx bereitgestellt, um die statischen Dateien zu bedienen.
  - Das Backend wird als Spring Boot-Anwendung in einem JAR-Container verpackt.
3. Docker-Compose Setup:
- Erstelle eine Docker-Compose-Datei, um beide Container (Frontend und Backend) lokal zusammen auszuführen und miteinander kommunizieren zu lassen.
- Teste, ob das Frontend erfolgreich auf das Backend zugreifen kann.
4. Kubernetes Deployment und Services:
- Erstelle Kubernetes Deployment und Service-Konfigurationen für das Frontend und Backend, damit beide Container im Kubernetes-Cluster laufen können.
- Stelle sicher, dass das Frontend über den Service-Namen auf das Backend zugreifen kann.
5. Shell-Skript zur Automatisierung:
- Schreibe ein Shell-Skript, das automatisch den Docker-Compose-Prozess startet und sicherstellt, dass neue Docker-Images gebaut werden.
- Nachdem die neuen Docker-Images gebaut wurden, soll das Skript die Kubernetes-Manifeste automatisch aktualisieren.
Anforderungen:
- Frontend (Vanilla JavaScript):
  - Ein einfaches To-Do-Listen-Interface, das es dem Benutzer ermöglicht, Aufgaben hinzuzufügen. Wurde von Günther schon erledigt.
  - Das Frontend muss HTTP-Anfragen an das Backend senden, um Aufgaben zu protokollieren. Wurde von Günther schon erledigt.
- Backend (Spring Boot, Java, Maven):
  - Das Backend muss eine RESTful API bereitstellen, um Aufgaben hinzuzufügen und die  Liste der Aufgaben anzuzeigen. Wurde von Günther schon erledigt.

- Dockerfiles:
  - Erstelle Dockerfiles für das Frontend (Nginx) und das Backend (Spring Boot).
  - Der Frontend-Container muss die statischen Dateien bereitstellen.
  - Der Backend-Container muss den Spring Boot JAR ausführen.
- Docker-Compose:
  - Erstelle eine Docker-Compose-Datei, um die Container lokal zu testen.
  - Beide Container (Frontend und Backend) müssen auf verschiedenen Ports laufen und miteinander kommunizieren können.
- Kubernetes:
  - Erstelle Kubernetes-Deployments und Services für das Frontend und das Backend.
  - Achte darauf, dass die Container im Kubernetes-Cluster bereitgestellt werden und dass das Frontend auf das Backend zugreifen kann.
- Shell-Skript:
  - Automatisiere den Docker-Compose-Prozess und stelle sicher, dass nur neue Docker-Images gebaut werden und die Kubernetes-Manifeste anschließend aktualisiert werden.

Abgabe:
- Ein GitHub-Repository mit allen folgenden Dateien:
  1. Frontend:
     - HTML, CSS und JavaScript-Dateien
     - Dockerfile für das Frontend
  2. Backend:
     - Java, Spring Boot und Maven-Projekt-Dateien
     - Dockerfile für das Backend
  3. Docker-Compose-Datei
  4. Kubernetes Deployment- und Service-Dateien für das Frontend und Backend
  5. Shell-Skript zur Automatisierung der Docker- und Kubernetes-Aktualisierungen
Schritte zur Durchführung:
1. Erstelle das Projekt im GitHub-Repository.
2. Entwickle das Frontend und Backend gemäß den Anforderungen. Wurde von Günther schon erledigt.
3. Schreibe die Dockerfiles und stelle sicher, dass sie korrekt funktionieren.
4. Erstelle das Docker-Compose-Setup und stelle sicher, dass es lokal funktioniert.
5. Erstelle die Kubernetes-Manifest-Dateien und stelle sicher, dass beide Container im Cluster laufen.
6. Schreibe das Shell-Skript zur Automatisierung von Docker- und Kubernetes-Prozessen.
Acceptence criterias :
Frontend (Vanilla JS) und Backend (Spring Boot) müssen Dockerized und im Kubernetes-Cluster bereitgestellt werden.
Docker-Compose wird verwendet, um lokal zu testen, ob beide Container miteinander kommunizieren.
Der gesamte Prozess wird durch Jenkins CI/CD und ein Shell-Skript automatisiert.
Das Projekt soll als GitHub-Repository abgegeben werden, in dem alle Aufgaben implementiert sind.
