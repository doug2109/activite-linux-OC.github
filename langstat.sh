#!/bin/bash
#
##################################################################################
#				langstat.sh					 #
##################################################################################
# Ce script fournit des statistiques sur l'utilisation des lettres dans une langue.
# On fournit en premier argument un dictionnaire de langue et en deuxième argument un nombre définissant la taille des mots à traiter.
####
# 1. Le script parcourt le dictionnaire et indique le nombre d'occurences de chaque lettre dans l'ordre décroissant d'utilisation.
# 2. Lorsque le deuxième argument est présent et est valide (nombre réel compris entre 0 et la taille du mot le plus long), le script effectue l'action indiquée précédemment (§1) seulement sur les mots de la taille indiquée.
####
# Auteur: Édouard LUMET
# Powered by: OpenClassrooms
# Version: 0.1-alpha
##################################################################################
#
#### Variables ####
#contentFile="cat $1"
oldIFS=$IFS
IFS=$'\n'
filePath=$1
###################
#
if [ $1 != "" ] && [ -e $filePath ]
then
	echo "Analyse statistique en cours sur le fichier $filePath ..."
	sleep 5
	for ligne in $(<$filePath)
	do
		for lettre in $ligne
		do
			case
			esac
		done
	done
else
	echo "Veuillez indiquer au moins un argument valide, soit un fichier existant."
fi
