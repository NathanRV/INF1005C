clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Demande cha�ne de caract�res    *
%*             et appelle fonction             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/14                 *
%*MISE � JOUR:                                 *
%***********************************************

%Entre de la cha�ne
c=input('Entrer une chaine de caract�re : ', 's');

%Appel fonction encadrer
[encadrer]=encadrer(c);

%Affichage
fprintf(encadrer,c)