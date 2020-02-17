clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Demande chaîne de caractères    *
%*             et appelle fonction             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/03/14                 *
%*MISE À JOUR:                                 *
%***********************************************

%Entre de la chaîne
c=input('Entrer une chaine de caractère : ', 's');

%Appel fonction encadrer
[encadrer]=encadrer(c);

%Affichage
fprintf(encadrer,c)