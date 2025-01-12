#!/bin/bash

# Étape 1 : Créer et lancer un conteneur Docker Ubuntu 24.04 avec systemd
sudo docker run -d -it --name ubuntu2404-systemd --privileged --cgroupns=host --tmpfs=/run --tmpfs=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:rw trfore/docker-ubuntu2404-systemd:latest

# Étape 2 : Exécuter la commande docker exec
sudo docker exec -it ubuntu2404-systemd /bin/bash

# Étape 3 : Attente de 10 secondes
sleep 10

# Étape 4 : Exécuter apt update et apt install dans le conteneur
apt update && apt install wget git -y
