clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main2.m                      *
%*DESCRIPTION: Demande image et chiffre        *
%*             l'image avant de l'afficher     *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/14                 *
%*MISE � JOUR: 2019/03/15                      *
%***********************************************

%Entr�e image
im=input('Entrer le nom du fichier image : ', 's');

%lecture image
pixel=imread(im);

%V�rification de l'entr�ee
if ismatrix(pixel)==1 
    %Appel fonction chiffrer
    [imageA, imageB]=chiffrer(pixel);

    %Cr�ation combinaison
    combinaisonAB=imageA+imageB;

    %Affichage (appel fonction)
    afficher(imageA, imageB, combinaisonAB)
else
    fprintf('Ce n''est pas une image en noir et blanc!')
end