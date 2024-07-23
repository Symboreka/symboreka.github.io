---
layout: post
title: Docker Basics
date: 2024-04-26
categories: [post, docker]
tags: [docker, deutsch, german]
---

# Docker Basics

This post is an online-reference for the notes I took during a docker workshop. Other than my usual posts, this article is in german, as the workshop was in german.


## Inhalt

- Aufbau und Bestandteile
- Interaktive Ausführung
-  Konfiguration
- Softwarebereitstellung
- Lokale Orchestrierung
- Ausblick

## Aufbau und Bestandteile

- Virtualisierung erfolgt auf Anwendungslevel
- Auf dem Betriebssystem läuft nur noch die container engine
- Installiert werden keine Docker Container, sondern eher Images die auf verschiedenen Engines laufen können
- “Hello-world” Image dient als schneller Test
- `docker pull hello-world` -> `docker run hello-world`
- Laufzeitumgebungen sind wegabstrahiert. Was genau das “hello world” printet, ist uns nicht bekannt
- User auf dem Hostsystem müssen in der docker Gruppe sein, um container ausführen zu können
- `docker ps` zeigt laufende Container
- `docker ps -a` zeigt auch gestoppte Container
- `docker image ls` zeigt alle lokal vorhandenen Images
- Ein Kommando kann bei Ausführung des Containers direkt ausgeführt werden. Die Ausgabe wird auf das aktuelle Terminal weitergeleitet
- Bei Mehrfachausführung wird eine neue Instanz des Images erstellt mit neuem Namen
- Interaktive Container ausführen mit `docker run -it <name> <parameters>`
- Danach kann mit dem Container normal gearbeitet werden. Effektiv ist man auf einer Ubuntu Maschine damit
- Remote Zugriff auf Container über Dev Container möglich

## Remotezugriff mit Visual Studio Code (Dev Container)
- Dev Container Plugin in VSC installieren
- Gestoppte oder laufende Container sind verbindungsfähig, bei gestoppten Containern startet VSC automatisch den Container
- Alle erstellten Dateien und Terminalinstanzen werden jetzt auf dem Container ausgeführt

## Konfiguration von Containern

- Port-Mapping ist beim starten eines Containers möglich, über `-p <local-port>:<containerport>` 
- Netzwerke in Docker sind auch möglich (missing docs) (docker network create <name>) und mit --network <name> anhängen
- Example: `docker run -d -p 8000:80 nginx` startet einen nginx container im Hintergrund (-d) und mappt den internen Port 80 auf den offenen Port 8000.
- Netzwerktreiber über `-bridge` (default) oder `-host` (Direktanbindung der Ports der Hostmaschine, verhindert mehrfachausführung)
- Umgebungsvariablen sind von außen definierbar, parameter `-e <key>=<value>`
- Login Daten von Programmen wie z.B. Datenbanken werde über diese Parameter weitergegeben


## Volumes in Docker

- Container speichern Veränderungen erstmal lokal. Sobald der container entfernt wird, sind die Daten auch weg.
- Volumes mappen lokale Ordner auf Ordner innerhalb eines Containers
- Persistente Datenspeicherung ist damit möglich
- Volumes werden als Parameter übertragen: `-v <VolumeName oder Host-Pfad>:<Container-Path>`
- Beispiel mit Datenbanksystem in den Folien

## Images erstellen 
- Steuerungsdatei: dockerfile
- Struktur: https://docs.docker.com/engine/reference/builder/
- CMD startet Befehle

## Multistage Build
- Was ist, wenn man C/C++ Programme auf Windows kompiliert und dann auf dem Container laufen lassen möchte?
- Das funktioniert so erstmal nicht.
- Das Builden wird auf einem Build-Container erledigt, das Ergebnis wird in einen Container mit Laufzeitumgebung übertragen. Dieser wird dann der Release.
- Das waren 2 Stages, es gibt auch Buildtechniken mit noch mehr Stages
- Multistage Dockerfiles sind in den Folien vorhanden


## Images bereitstellen und verwenden

- `docker push` pusht container auf das docker hub (Login erforderlich)
- Zum pushen auf ein lokales Repo: `git login git.fh-muenster.de:4567`
- `docker build -t git.fh-muenster.de:4567/codingspace/workshop/docker1/web` 
- `docker push git..../web`
- Genaueres in den Folien

## Lokale Orchestrierung
- Docker Compose ist super
- Neu erstellen der Container muss nicht mehr manuell gemacht werden
- Mehrere Container zusammen managen
- Services unterteilen anstatt Container zu unterteilen
- Mehrere Container können einen Service darstellen
- Braucht nicht mehr extern installiert werden `docker compose up -d`
- `docker compose stop`
- `docker compose rm`
- `docker compose -f <compose-file> …`
- Variablen in docker compose files gehen (nach Folie)
- WIchtig: Leerzeichen als input akzeptieren ist möglich, durch den weggelassenen Doppelpunkt in den Folien dargestellt
- Docker Secrets sind eine Möglichkeit, Passwörter sicher zu übertragen

## Ausblick
- Docker Swarm
- Schnappt sich eine docker compose file und lässt sich auf beliebig viele Instanzen erweitern und verwalten. Kubernetis ist dort eine Variante
