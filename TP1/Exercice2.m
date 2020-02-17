clear all ; clc ;
%********************************************
%*NOM DU FICHIER: Exercice2.m               *
%*DESCRIPTION: Calcule la facture           *
%*              d'une �picerie sans et avec *
%*              les taxes!                  *
%*                                          *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CR�ATION: 2019/01/23              *
%*MISE � JOUR: 2019/01/24                   *
%********************************************

A=[3.59 4.9 8.11 2.49 12.12];   %d�finit la matrice A
B=[3 ; 57 ; 2 ; 10 ; 1];        %d�finit la matrice B
C=[1.89 2.55 0.70 3.33];        %d�finit la matrice C
D=[7.1 ; 4.5 ; 20.0 ; 9.1];     %d�finit la matrice D

Produit1 = A*B;     %donne le prix totale pour 1er type produit
Produit2 = C*D;     %donne le prix totale pour 2eme type produit

disp('Le prix totale pour le premier type de produit en $ est de :');
disp(Produit1);
%Fais appara�tre 'Le prix ... :' et fais apparaitre valeur de Produit1
disp('Le prix totale pour le deuxi�me type de produit en $ est de :');
disp(Produit2);
%Fais appara�tre 'Le prix ... :' et fais apparaitre valeur de Produit2

Couttotale = Produit1 + Produit2;   %Addition des deux produits
disp('Le prix totale en $ est de :');
disp(Couttotale);
%Fais appara�tre 'Le prix ... :' et fais apparaitre valeur de Couttotale

Coutfinale=(15/100)*Couttotale + Couttotale;    %Calcul du cout avec taxes
disp('Le montant de la facture d�finitive en $ est de :') ; 
disp(Coutfinale);
%Fais appara�tre 'Le prix ... :' et fais apparaitre valeur de Coutfinale