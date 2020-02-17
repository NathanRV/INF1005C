clear all ; clc ;
%********************************************
%*NOM DU FICHIER: Exercice3.m               *
%*DESCRIPTION: Manipulation de matrices     *
%*                                          *
%*                                          *
%*                                          *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CRÉATION: 2019/01/23              *
%*MISE À JOUR: 2019/01/24                   *
%********************************************

A=25+(5-25)*rand(4);        %A(4x4) contenant nombre entre 5 et 25
A=fix(A);                   %Nombre entier
disp('La matrice A est : ');
disp(A);

B=randi([50 99],6,5);       %B(6x5) contenant nombre entier entre 50 et 99
disp('La matrice B est : ');
disp(B);

B([3;5], :)=[];             %1.Supprimer la 3eme et 5ieme ligne de B
disp('La matrice B est : ');
disp(B);

B(:,4)=[];                  %2.Supprimer la 4eme colonne de B
disp('La matrice B est : ');
disp(B);

C=(A*B)/100;                %3.Produit de B par A diviser par 100
disp('La matrice C est : ');
disp(C);

D=B./A;                     %4.Division de B par A, élément par élément
disp('La matrice D est : ');
disp(D);

C((2:2:end),:)=sqrt(C((2:2:end),:));    %5.Racine carrée des éléments de 
disp('La matrice C est : ');            %lignes paires
disp(C);

D(:, (1:2:end))=(D(:,(1:2:end))).*(D(:,(1:2:end))); %6.Carrée des éléments
disp('La matrice D est : ');                        %de colonnes paires
disp(D);

Z=C(4,2)+D(2,3);            %7.  8e élément de C+10e élément de D
fprintf('L''addition du 8eme element de C et du 10eme element de D donne :');
fprintf('\n %.2f \n \n',Z);

E=[11:4:23 ; 21:-3:12 ; 3:5:18]';   %8a. E à l'aide de borne et raison
disp('La matrice E est : ');
disp(E);

F=[A E];                    %8b. Concaténation de A et E
disp('La matrice F est : ');
disp(F);

disp('Tous les éléments de la première et dernière ligne de la matrice F');
disp(F([1;end],:));%9. Tous les éléments de première et dernière ligne de F

G=mean(F, 2);       %10. G contenant les moyennes des lignes de la matrice F
disp('La matrice G est : ');
disp(G);

