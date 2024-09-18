#!/bin/bash

# Percorsi delle directory dei temi e dei plugin
THEMES_DIR="wp-content/themes"
PLUGINS_DIR="wp-content/plugins"

# Nome del file README
README_FILE="README.md"

# Controlla se la directory dei temi esiste
if [ -d "$THEMES_DIR" ]; then
    echo "## Elenco dei Temi" > $README_FILE
    echo "" >> $README_FILE
    ls -1 "$THEMES_DIR" | while read theme; do
        echo "- $theme" >> $README_FILE
    done
    echo "" >> $README_FILE
else
    echo "La directory dei temi ($THEMES_DIR) non esiste." > $README_FILE
fi

# Controlla se la directory dei plugin esiste
if [ -d "$PLUGINS_DIR" ]; then
    echo "## Elenco dei Plugin" >> $README_FILE
    echo "" >> $README_FILE
    ls -1 "$PLUGINS_DIR" | while read plugin; do
        echo "- $plugin" >> $README_FILE
    done
    echo "" >> $README_FILE
else
    echo "La directory dei plugin ($PLUGINS_DIR) non esiste." >> $README_FILE
fi

echo "README.md creato con successo!"
