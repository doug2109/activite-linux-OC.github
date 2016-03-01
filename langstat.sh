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
# Version: 0.5-alpha
##################################################################################
#
#### Variables ####
IFS=$'\n'
filePath=$1
a=0
b=0
c=0
d=0
e=0
f=0
g=0
h=0
i=0
j=0
k=0
l=0
m=0
n=0
o=0
p=0
q=0
r=0
s=0
t=0
u=0
v=0
w=0
x=0
y=0
z=0
###################
#
if [ $1 != "" ] && [ -e $filePath ]
then
	echo "Analyse statistique en cours sur le fichier $filePath ..."
	for ligne in $(<$filePath)	#Parcourt chaque ligne du dico
	do
		tailleLigne=`expr length $ligne`
		var=0
		while [ $var -lt $tailleLigne ]	#Parcourt chaque lettre de chaque ligne
		do
			case "${ligne:$var:1}" in	#Teste sur la lettre (=A ou =B ou etc)
				"A")
					let "a = $a + 1" #Incrémente le conteur
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
			let "var = $var + 1"
		done
	done
	echo "$a -- A"
	echo "$b -- B"
	echo "$c -- C"
else
	echo "Veuillez indiquer au moins un argument valide, soit un fichier existant."
fi
