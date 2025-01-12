#!/bin/bash

# Étape 1 : Créer et lancer un conteneur Docker Ubuntu 24.04 avec systemd
sudo docker run -d -it --name ubuntu2404-systemd --privileged --cgroupns=host --tmpfs=/run --tmpfs=/tmp --volume=/sys/fs/cgroup:/sys/fs/cgroup:rw trfore/docker-ubuntu2404-systemd:latest

# Étape 2 : Accéder au conteneur
sudo docker exec -it ubuntu2404-systemd /bin/bash <<'EOF'
  # Attendre 10 secondes avant d'exécuter les commandes
  sleep 10

  # Mettre à jour les paquets et installer wget et git
  apt update && apt install wget git -y
EOF
