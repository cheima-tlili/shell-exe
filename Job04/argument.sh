#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Utilisation : $0 nouveau_fichier fichier_source"
    exit 1
fi

nouveau_fichier="$1"
fichier_source="$2"

# Utilisez la commande "cp" pour copier le fichier source vers le nouveau fichier.
cp "$fichier_source" "$nouveau_fichier"

if [ $? -eq 0 ]; then
    echo "Le contenu de $fichier_source a été copié dans $nouveau_fichier."
else
    echo "Erreur lors de la copie du contenu de $fichier_source dans $nouveau_fichier."
fi

