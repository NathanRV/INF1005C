clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice3.m                  *
%*DESCRIPTION: Manipulation de matrices �      *
%*             l'aide d'op�rateurs logiques    *
%*             et relationnels!                *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CR�ATION: 2019/01/30                 *
%*MISE � JOUR: Aucune                          *
%***********************************************

%Entr�e des donn�es des matrices A,B,C
    A=[12,1,3;10,19,20;32,1,5];
    B=[101,20,15,10,1,2,3,18];
    C=[5,13,15,2,101,6,7,33];

%Le vecteur montrant les valeurs des �l�ments impairs de la matrice A
    Res = rem(A,2) ~= 0 ;
    Val = A(Res);
    fprintf('Le vecteur montrant les valeurs des �l�ments impair de la matrice A : \n');
    fprintf(' %d ', Val);

%Le nombre d'�lements pairs de la matrice A
    Res = rem(A,2) == 0 ;
    Val = A(Res);
    Elementpair = numel(A(Res));  
    fprintf('\nLe nombre d''�l�ments pairs de la matrice A est de : \n');
    fprintf(' %d \n',Elementpair);
 
%Le vecteur montrant les valeurs de la matrice B qui sont comprises
%entre 1 et 10
   Res= B<=10 ; 
   Vec= B(Res);
   fprintf('Le vecteur des valeurs de la matrice B comprises entre 1 et 10 : \n') ;
   fprintf(' %d ', Vec);
      
% Le vecteur montrant les valeurs des �l�ments des colonnes 2 � 5 des
% matrices B et C qui sont �gales
    D=B(2:5);
    E=C(2:5);
    Res = E==D;
    Val = [E(Res)];
    fprintf('\nVecteur montrant les valeurs des �l�ment des colone 2 � 5 des matrices B et C qui sont �gales :\n');
    fprintf(' %d \n', Val)
     
%Le nombre de colonnes de A ayant le produit de leurs �l�ments sup�rieur �
%200
    F= prod(A);
    Res= F>200 ;   
    Elementsupp= numel(F(Res));
    fprintf('Le nombre de colonnes de A ayant le produit de leurs �l�ments sup�rieur � 200 :\n');
    fprintf(' %d \n', Elementsupp) ;