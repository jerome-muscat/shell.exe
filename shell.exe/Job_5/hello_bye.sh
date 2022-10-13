#!/bin/bash
#cette boucle permet d'afficher sur le terminal le texte entre les guillemets si l'argument 1 prend la valeur Hello.
if [ $1 = "Hello" ] 
	then
	echo "Bonjour, je suis un script !"
fi 

#cette boucle permet d'afficher sur le terminal le texte entre les guillemets si l'argument 1 prend la valeur Bye
if [ $1 = "Bye" ]
	then
	echo "Au revoir et bonne journée"
fi
