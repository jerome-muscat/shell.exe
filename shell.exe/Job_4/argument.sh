#!/bin/bash
#cette ligne de commande permet de créer un fichier qui aurra comme nom l'argument 1
#Puis elle permet d'afficher le fichier saisi dans l'arguments 2 et le redirige dans l'argument 1
touch $1 | cat $2 > $1
