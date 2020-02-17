clear all; clf; close all; clc;
%***********************************************
%*NOM DU FICHIER: Exercice2.m                  *
%*DESCRIPTION: Graphes des heures de travail   *
%*             domestique non payées par jour  *
%*             dans différents pays            *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/04/09                 *
%*MISE À JOUR:                                 *
%***********************************************

%Génération matrice
X=1:8;
Y=[3.73 2.47;4.07 2.43;3.73 2.25;4.04 2.51;3.67 2.85;5.87 0.86;3.9 1.52;3.74 0.68];

%Création barres
b=bar(X,Y,0.75);

%Couleur bandes
b(1).FaceColor='r';
b(2).FaceColor='g';

%Couleur contour bandes
b(1).EdgeColor='b';
b(2).EdgeColor='b';

%Épaisseur contour
b(1).LineWidth=2;
b(2).LineWidth=2;

%Axes
xlabel('');
ylabel('');

%Valeur qualitatives axe x
set(gca,'XTick',[1:8],'XTickLabel',{'CAN','USA','FRA','GER','SWE','IND','CHI','JAP'});

%Titre
title('Nombre moyen d''heures de travail domestique non payées');

%Légende
legend('Femmes','Hommes','location','northwest');

