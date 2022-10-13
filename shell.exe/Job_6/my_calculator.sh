#!/bin/bash
#cette boucle permet de faire une addition si l'argument 2 est +
if [ $2 = "+" ]
	then 
	total=$(($1+$3))
	echo $total
fi

#cette boucle permet de faire une soustraction si l'argument 2 est -
if [ $2 = "-" ]
        then 
        total=$(($1-$3))
        echo $total
fi

#cette boucle permet de faire une division si l'argument 2 est /
if [ $2 = "/" ]
        then 
        total=$(($1/$3))
        echo $total
fi

#cette boucle permet de faire une multiplication si l'argument 2 est x
if [ $2 = "x" ]
        then 
        total=$(($1*$3))
        echo $total
fi
