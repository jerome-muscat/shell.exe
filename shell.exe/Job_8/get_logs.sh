#!/bin/bash
#cette commande permet d'afficher la date selon le format que l'on souhaite, ici : jj-mm-aaaa-HH-MM, et l'attribut à une variable précédemment nommé.
d=$(date +%d-%m-%Y-%H-%M)

#grep permet de chercher ce qui est entre les guillemets dans le fichier log et de rediriger le résultat dans le fichier que l'on souhaite et de le nommer selon la variable d.
grep -c "session opened" /var/log/auth.log > /home/jerome/GitHub/shell.exe/Job_8/number_connection-$d

#tar permet ici de compresser le fichier, au format désiré, ici : .tar.gz
tar -cf number_connection-$d.tar.gz ~/GitHub/shell.exe/Job_8/number_connection-$d 

#mv permet de déplacer un fichier où l'on souhaite
mv number_connection-$d.tar.gz /home/jerome/GitHub/shell.exe/Job_8/Backup

#rm permet de supprimer le fichier 
rm /home/jerome/GitHub/shell.exe/Job_8/number_connection-$d
