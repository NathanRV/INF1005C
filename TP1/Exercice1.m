clear all; clc ;
%********************************************
%*NOM DU FICHIER: Exercice1.m               *
%*DESCRIPTION: Calcule le volume et les     *
%*              deux surface d'une pyramide *
%*              tronquée et les affiche!    *
%*                                          *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CRÉATION: 2019/01/23              *
%*MISE À JOUR: 2019/01/24                   *
%********************************************

%Définition des valeurs
B=input('Donner la valeur d''un cote B de la grande base: '); %Demande la valeur de la grande base
b=input('Donner la valeur d''un cote b de la petite base: '); %Demande la valeur de la petite base
h=input('Donner la valeur de la hauteur h: ');                %Demande la valeur de la hauteur

SB=B^2 ;            %SB correspond à la surface de la grande base
Sb=b^2 ;            %Sb correspond à la surface de la petite base
V=(h/3)*(SB +Sb + (SB*Sb)^(1/2)) ; %V correspond au volume selon l'équation donné

fprintf('\nSurface de la grande base %.2f cm^2 \nSurface de la petite base %.2f cm^2 \nVolume de la pyramide tronquée %.2f cm^3', SB,Sb,V );
%Change de ligne à chaque valeur donnée et donne la valeur des surfaces et
%du volume avec les unités et deux décimales
