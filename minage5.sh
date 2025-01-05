#!/bin/bash

# Télécharger SRBMiner-Multi
echo "Téléchargement de SRBMiner-Multi..."
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/2.7.4/SRBMiner-Multi-2-7-4-Linux.tar.gz

# Décompresser l'archive
echo "Décompression de SRBMiner-Multi..."
tar -xvf SRBMiner-Multi-2-7-4-Linux.tar.gz

# Aller dans le répertoire décompressé
cd SRBMiner-Multi-2-7-4

# Renommer l'exécutable
echo "Renommage de l'exécutable..."
mv SRBMiner-MULTI java

# Exécuter le mineur
echo "Lancement de SRBMiner-Multi avec les paramètres spécifiés..."
./java --algorithm power2b --pool power2b.mine.zergpool.com:7445 --wallet D6mhi8pdd2ADDZgJGUKi5f4UKbfdhe77Z1 --password c=DOGE,mc=MBC,ID=d1
