function[moy]=Moyenne(notes)

%Fonction qui calcule la moyenne selon pondération
%[moy]=Moyenne(notes)
%*********************************************************
%Nom du fichier: Moyenne.m
%Description: exercice 3 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: notes (vecteur)
%Valeurs de retour: moyenne(valeur numérique)
%Date: 26 mars 2019
%*********************************************************

%Calcul
moy=notes(1)*0.2+notes(2)*0.35+notes(3)*0.45;
end