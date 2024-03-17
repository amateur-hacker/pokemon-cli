#!/usr/bin/env bash

# Inform the user about the ongoing process
echo "Copying Pokémon shell scripts to $HOME/.local/bin"
# Add a small delay for better user experience
sleep 1s

# Copy all scripts from the 'scripts' directory to $HOME/.local/bin
rsync -arvP ./scripts/* $HOME/.local/bin/

# Inform the user about the next step
echo "Copying Pokémon datasets directory to $HOME/.local/share"
# Copy the 'pokemons' directory to $HOME/.local/share
rsync -arvP ./pokemons $HOME/.local/share/

tput setaf 12 && echo -ne "\nProgram CLI name: "
tput sgr0
tput bold setaf 7 && echo "pokemon"
tput sgr0

# Inform the user about the successful completion of the installation
./scripts/pokemon -r
echo -e "\nInstallation complete. Enjoy using Pokémon CLI!"

