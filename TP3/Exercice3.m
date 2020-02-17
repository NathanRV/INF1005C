clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice3.m                  *
%*DESCRIPTION: Tri d'une liste de              *
%*                        nombres              *
%*                                             *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CRÉATION: 2019/02/13                 *
%*MISE À JOUR: Aucune                          *
%***********************************************

%Démarrage chrono
tic();
%InsertionSort
A=randperm(50);
i=1;
while i<length(A)
    j=i;
    while j>0 && A(j+1)<A(j)
        x=A(j);
        A(j)=A(j+1);
        A(j+1)=x ;
        j=j-1;
    end 
    i=i+1;
end

%Fin chrono et conversion en us
t=10^6*toc();

%Affichage
fprintf('Temps d''exécution de InsertionSort : %.2f us',t) 

%Départ chrono
tic()

%Sort
B=randperm(50);
B=sort(B);

%Fin chrono et conversion en us
t2=10^6*toc();

%Affichage
fprintf('\nTemps d''exécution de sort() : %.2f us',t2)