#!/bin/bash
#
##################################################################################
#				langstat.sh					 #
##################################################################################
# Ce script fournit des statistiques sur l'utilisation des lettres dans une langue.
# On fournit en premier argument un dictionnaire de langue et en deuxième argument un nombre définissant la taille des mots à traiter.
####
# 1. Le script parcourt le dictionnaire et indique le nombre d'occurences de chaque lettre dans l'ordre décroissant d'utilisation.
# 2. Lorsque le deuxième argument est présent, le script indique le nombre de mots de longueur supérieure au nombre indiqué en argument2 puis les affiche.
####
# Auteur: Édouard LUMET <edouard[_AT_]echodelta[_DOT_]fr>
# Powered by: OpenClassrooms <https://openclassrooms.fr>
# Version: 2.0
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
motsLongs=0
tempCountFile="STATISTIQUES"
tempLengthFile="STATISTIQUES2"
###################
#
if [ $1 != "" ] && [ -e $filePath ] #Teste l'existence du premier paramètre ET du fichier donné en premier paramètre
then
	echo -e "\nAnalyse statistique en cours sur le fichier $filePath ..."
	for ligne in $(<$filePath)	#Parcourt chaque ligne du dico
	do
		tailleLigne=`expr length $ligne` #Stocke dans une variable la taille de la ligne en cours
		if [ $2 != "" ] #Teste si l'argument2 est présent pour traitement de la seconde fonctionnalité
		then
			if [ $tailleLigne -gt $2 ] #Teste si le mot actuel à une longueur supérieure à l'argument2
			then
				let "motsLongs = $motsLongs + 1" #Incrémente le conteur de mots de taille supérieure à arg2
				echo "$ligne" >> $tempLengthFile #Stocke alors le mot dans un fichier temporaire
			fi
		fi
		var=0
		while [ $var -lt $tailleLigne ]	#Parcourt chaque lettre de chaque ligne (jusqu'à la taille de la ligne)
		do
			case "${ligne:$var:1}" in	#Teste sur la lettre (=A ou =B ou etc)
				"A")
					let "a = $a + 1" #Incrémente le conteur pour la lettre correspondante
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
	# Ajout des statisqtiques à un fichier temporaire
	echo "$a -- A" >> $tempCountFile
	echo "$b -- B" >> $tempCountFile
	echo "$c -- C" >> $tempCountFile
	echo "$d -- D" >> $tempCountFile
	echo "$e -- E" >> $tempCountFile
	echo "$f -- F" >> $tempCountFile
	echo "$g -- G" >> $tempCountFile
	echo "$h -- H" >> $tempCountFile
	echo "$i -- I" >> $tempCountFile
	echo "$j -- J" >> $tempCountFile
	echo "$k -- K" >> $tempCountFile
	echo "$l -- L" >> $tempCountFile
	echo "$m -- M" >> $tempCountFile
	echo "$n -- N" >> $tempCountFile
	echo "$o -- O" >> $tempCountFile
	echo "$p -- P" >> $tempCountFile
	echo "$q -- Q" >> $tempCountFile
	echo "$r -- R" >> $tempCountFile
	echo "$s -- S" >> $tempCountFile
	echo "$t -- T" >> $tempCountFile
	echo "$u -- U" >> $tempCountFile
	echo "$v -- V" >> $tempCountFile
	echo "$w -- W" >> $tempCountFile
	echo "$x -- X" >> $tempCountFile
	echo "$y -- Y" >> $tempCountFile
	echo "$z -- Z" >> $tempCountFile
	# Traitement du fichier temporaire et affichage
	echo -e "\nLes statiqtiques sur $filePath sont :\n"
	sort -rn $tempCountFile #Tri du fichier temporaire par ordre décroissant d'occurences
	echo -e "$tempCountFile\n" #Affichage du contenu du fichier temporaire trié (stats)
	rm $tempCountFile #Suppression du fichier temporaire
	if [ $2 != "" ] #Teste si l'argument2 est présent pour affichage des stats d'argument2
	then
		echo -e "\nLes mots de plus de $2 lettres sont les suivants (au nombre de $motsLongs) :\n"
		sort $tempLengthFile
		echo -e "$tempLengthFile\n" #Affichage des mots de plus de x lettres (arg2)
		rm $tempLengthFile #Suppression du fichier temporaire
	fi
else
	echo "Veuillez indiquer au moins un argument valide, soit un fichier existant." #Affichage si argument1 manquant ou fichier inexistant
fi
