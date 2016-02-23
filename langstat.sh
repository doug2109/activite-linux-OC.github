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
# Auteur: Édouard LUMET <edouard[_AT_]echodelta[_DOT_]fr>
# Powered by: OpenClassrooms <https://openclassrooms.fr>
# Version: 0.1-alpha
##################################################################################
#
#### Variables ####
IFS=$'\n'
filePath=$1
let "a = 0"
let "b = 0"
let "c = 0"
let "d = 0"
let "e = 0"
let "f = 0"
let "g = 0"
let "h = 0"
let "i = 0"
let "j = 0"
let "k = 0"
let "l = 0"
let "m = 0"
let "n = 0"
let "o = 0"
let "p = 0"
let "q = 0"
let "r = 0"
let "s = 0"
let "t = 0"
let "u = 0"
let "v = 0"
let "w = 0"
let "x = 0"
let "y = 0"
let "z = 0"
tempCountFile="count.txt.tmp"
###################
#
if [ $1 != "" ] && [ -e $filePath ]
then
	echo "Analyse statistique en cours sur le fichier $filePath ..."
	sleep 5
	for ligne in $(<$filePath)
	do
		IFS=$''
		for lettre in $ligne
		do
			case lettre in
				"A")
					let "a = $a + 1"
					;;
				"B")
					let "b = $b + 1"
					;;
				"C")
					let "c = $c + 1"
					;;
				"D")
					let "d = $d + 1"
					;;
				"E")
					let "e = $e + 1"
					;;
				"F")
					let "f = $f + 1"
					;;
				"G")
					let "g = $g + 1"
					;;
				"H")
					let "h = $h + 1"
					;;
				"I")
					let "i = $i + 1"
					;;
				"J")
					let "j = $j + 1"
					;;
				"K")
					let "k = $k + 1"
					;;
				"L")
					let "l = $l + 1"
					;;
				"M")
					let "m = $m + 1"
					;;
				"N")
					let "n = $n + 1"
					;;
				"O")
					let "o = $o + 1"
					;;
				"P")
					let "p = $p + 1"
					;;
				"Q")
					let "q = $q + 1"
					;;
				"R")
					let "r = $r + 1"
					;;
				"S")
					let "s = $s + 1"
					;;
				"T")
					let "t = $t + 1"
					;;
				"U")
					let "u = $u + 1"
					;;
				"V")
					let "v = $v + 1"
					;;
				"W")
					let "w = $w + 1"
					;;
				"X")
					let "x = $x + 1"
					;;
				"Y")
					let "y = $y + 1"
					;;
				"Z")
					let "z = $z + 1"
					;;
			esac
		done
		IFS=$'\n'
	done
#### boucle de test à remplacer par les actions d'affichage sous le format demandé
	for var in "$a" "$b" "$c" "$d" "$e" "$f" "$g" "$h" "$i" "$j" "$k" "$l" "$m" "$n" "$o" "$p" "$q" "$r" "$s" "$t" "$u" "$v" "$w" "$x" "$y" "$z"
	do
		echo -e "$var\n"
	done
else
	echo "Veuillez indiquer au moins un argument valide, soit un fichier existant."
fi
