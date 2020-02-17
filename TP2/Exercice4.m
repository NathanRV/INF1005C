clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice4.m                  *
%*DESCRIPTION: Jeux de cartes                  *
%*                                             *
%*                                             *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CR�ATION: 2019/01/30                 *
%*MISE � JOUR: Aucune                          *
%***********************************************

%Demander � l'utilisateur de choisir un type de carte
type=input('Choisissez un type de carte: ', 's' );
type=upper(type);

%Demander � l'utilisateur de choisir un num�ro entre 1 et 13
num=input('Choisissez un num�ro de carte entre 1 et 13: ');

%V�rification du type et calcul du pointage
%Assigne un pointage incorrect sinon
switch (type)
    case 'PIQUE'
         pt=40+num;
    case 'COEUR'
         pt=30+num;
    case 'CARREAU'
         pt=20+num;
    case 'TR�FLE'
         pt=10+num;   
    otherwise
        disp('Erreur: type ou num�ro pas reconnu')
        pt=100;
end

%V�rification du chiffre
%Assigne un pointage incorrect sinon
switch (num)
    case num>13
        disp('Erreur: type ou num�ro pas reconnu')
        pt=100;
    case num<1
        disp('Erreur: type ou num�ro pas reconnu') 
        pt=100;
end

%Choix de l'ordinateur
 Onum=randi([1, 13]);
 Opt=10*randi([1,4]);
 Otype='Rien';
switch Opt
    case 10
    Otype='Tr�fle';
    case 20
    Otype='Carreau';
    case 30
    Otype='Coeur';
    case 40
    Otype='Pique';
end

%Calcul du pointage ordinateur
Opoint=Opt+Onum; 

%Si type et num�ro correct
if pt>=11 && pt<=53;
    
    %Affichage pointage
    fprintf('Votre pointage est de : %d', pt);
    fprintf('\nL''ordinateur a choisi : %s %d', Otype, Onum);
    fprintf('\nPointage de l''ordinateur : %d', Opoint);

    %Comparaison et affichage vainqueur
    if Opoint<=pt;
        fprintf('\nTu as gagn�!');
    else
        fprintf('\nTu as perdu!');
    end
else
end
