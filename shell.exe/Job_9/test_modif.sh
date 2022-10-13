#!/bin/bash
#Cette boucle permet de tester de document pour voir si il y a une différence ou non
#Si aucune différence n'est detectée alors le script s'arrête.
#Si une ou plusieurs différences sont détectées alors :
  #rm supprime le fichier original
  #cp permet de créer une copie du fichier modifié et renomme la copie en original
  #chmod permet de faire en sorte que tous les utilisateurs peuvent écrire et lire le fichier créer
  #../ permet d'exécuter un programme en indiquant l'arborescence complète
  
if diff /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist.csv /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist_original.csv 
	then
		echo "R.A.S"		
	else 
		rm /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist_original.csv
		cp /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist.csv /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist_original.csv
		chmod 666 /home/jerome/GitHub/shell.exe/Job_9/Shell_Userlist_original.csv
		../home/jerome/GitHub/shell.exe/Job_9/accessrights.sh
		echo "diff"
fi
