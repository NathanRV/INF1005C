clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice1.m                  *
%*DESCRIPTION: Calcul de la somme d'une s�rie  *
%*             en utilisant loop (while)       *
%*                                             *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CR�ATION: 2019/02/13                 *
%*MISE � JOUR: 2019/02/16                      *
%***********************************************

%D�claration des variables initiales
n=input('Combien de termes voulez-vous calculer?(faites le 0 pour quitter)\n');
i=n;
sum=0;

%D�but du 'loop'
while i~=0
    if i<0         %Nombre de terme n�gatif
    fprintf('Ce choix est invalide\n')
    elseif round(i)~=n     %Calcul nombre entier
    fprintf('Ce choix est invalide\n')
    else           %Somme de la s�rie
        while i>0
        res=1/(i+2)^i;
        sum=sum+res;
        i=i-1;
        end
    %Affichage r�sultat
    fprintf('La somme partielle des %d premiers termes est : \n %.12f \n',n,sum)
    end

%R�initialisation des variables
n=input('\nCombien de termes voulez-vous calculer?(faites le 0 pour quitter)\n');
i=n;
sum=0;
end

%Message d'au revoir
if i==0
    fprintf('Merci, Au revoir !')
else
    
end