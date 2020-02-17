clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main3.m                      *
%*DESCRIPTION: Pointage scrabble               *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/14                 *
%*MISE � JOUR: 2019/03/19                      *
%***********************************************

%intialisation du mot et langue
mot='communication';
langue='francais';

%Appel calcul pointage
[pointage]=calculerPointage(mot, langue);

%Affichage communication en fran�ais
fprintf('Le pointage pour le mot %s en %s est : %d', mot, langue, pointage)

%Affichage et calcul communication en anglais
langue='anglais';
[pointage]=calculerPointage(mot, langue);
fprintf('\nLe pointage pour le mot %s en %s est : %d', mot, langue, pointage)

%initialisation mots et point
mot1='chaise';
mot2='table';
mot3='divan';
mot4='banane';
mot5='poire';
mot6='pomme';
mot7='orange';
p(7)=0;

%Appel calcul pointage total
[p(1),p(2),p(3),p(4),p(5),p(6),p(7)]=calculerPointageTotal(mot1,mot2,mot3,mot4,mot5,mot6,mot7);


%Affiche 3 mots fran�ais et pointage
fprintf('\n \nPointage pour les 3 mots fran�ais sp�cifi�s : ')
fprintf('\n%s : %d', mot1, p(1))
fprintf('\n%s : %d', mot2, p(2))
fprintf('\n%s : %d', mot3, p(3))

%Affiche 4 mots fran�ais et pointage
fprintf('\n\nPointage pour les 4 mots fran�ais sp�cifi�s : ')
fprintf('\n%s : %d', mot4, p(4))
fprintf('\n%s : %d', mot5, p(5))
fprintf('\n%s : %d', mot6, p(6))
fprintf('\n%s : %d', mot7, p(7))

