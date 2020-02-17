clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice3.m                  *
%*DESCRIPTION: Manipulation de matrices à      *
%*             l'aide d'opérateurs logiques    *
%*             et relationnels!                *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CRÉATION: 2019/01/30                 *
%*MISE À JOUR: Aucune                          *
%***********************************************

%Entrée des données des matrices A,B,C
    A=[12,1,3;10,19,20;32,1,5];
    B=[101,20,15,10,1,2,3,18];
    C=[5,13,15,2,101,6,7,33];

%Le vecteur montrant les valeurs des éléments impairs de la matrice A
    Res = rem(A,2) ~= 0 ;
    Val = A(Res);
    fprintf('Le vecteur montrant les valeurs des éléments impair de la matrice A : \n');
    fprintf(' %d ', Val);

%Le nombre d'élements pairs de la matrice A
    Res = rem(A,2) == 0 ;
    Val = A(Res);
    Elementpair = numel(A(Res));  
    fprintf('\nLe nombre d''éléments pairs de la matrice A est de : \n');
    fprintf(' %d \n',Elementpair);
 
%Le vecteur montrant les valeurs de la matrice B qui sont comprises
%entre 1 et 10
   Res= B<=10 ; 
   Vec= B(Res);
   fprintf('Le vecteur des valeurs de la matrice B comprises entre 1 et 10 : \n') ;
   fprintf(' %d ', Vec);
      
% Le vecteur montrant les valeurs des éléments des colonnes 2 à 5 des
% matrices B et C qui sont égales
    D=B(2:5);
    E=C(2:5);
    Res = E==D;
    Val = [E(Res)];
    fprintf('\nVecteur montrant les valeurs des élément des colone 2 à 5 des matrices B et C qui sont égales :\n');
    fprintf(' %d \n', Val)
     
%Le nombre de colonnes de A ayant le produit de leurs éléments supérieur à
%200
    F= prod(A);
    Res= F>200 ;   
    Elementsupp= numel(F(Res));
    fprintf('Le nombre de colonnes de A ayant le produit de leurs éléments supérieur à 200 :\n');
    fprintf(' %d \n', Elementsupp) ;