clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Calcul math�matique             *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/26                 *
%*MISE � JOUR: 2019/04/03                      *
%***********************************************


%Entr�e et v�rification de n
n=input('Entrez n : ');
while isnumeric(n)==0 || n<1 || n>170
    fprintf('n doit �tre un nombre entier entre 1 et 170.\n')
    n=input('Entrez n : ');
end

%Entr�e et v�rification de k
k=input('Entrez k : ');
while isnumeric(n)==0 || k<1 || k>n
    fprintf('k doit �tre un nombre entier entre 1 et n.\n');
    k=input('Entrez k : ');
end

%ouverture fichier, fid=-1 veut dire �chec
fid2=fopen('factorielle.txt','rt');

%V�rification existence et appel fonction
if fid2==-1
    %cr�ation fichier
    factorielle('factorielle.txt');
    
    %ouverture fichier
    fid2=fopen('factorielle.txt','rt');
end


chiffre=fscanf(fid2,'%e',1); % premi�re lecture dans factorielle.txt
while ~isempty(chiffre)  % test de fin de fichier
        if n==chiffre % pour v�rifier correspondance
            a=fscanf(fid2,'%e',1); % Pour lire et stocker l'exposant
        elseif k==chiffre
            b=fscanf(fid2,'%e',1);  
        elseif (n-k)==chiffre
            c=fscanf(fid2,'%e',1);  
        end
        chiffre=fscanf(fid2,'%e',1); % lecture suivante dans factorielle.txt
end


%Calcul
resultat=(a/(b*c));

%affichage
fprintf('R�sultat = %.14e',resultat);

%fermeture fichier
verification=fclose(fid2);

%v�rification fermeture
if verification==-1
    warning('Le fichier ne s''est pas ferm� correctement!');
end