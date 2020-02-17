clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Calcul math�matique             *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/26                 *
%*MISE � JOUR:                                 *
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
fid2=fopen('factorielle.bin','r');

%V�rification existence et appel fonction
if fid2==-1
    %cr�ation fichier
    factorielle('factorielle.bin');
    
    %ouverture fichier
    fid2=fopen('factorielle.bin','r');
end

fseek(fid2,(8*2*n)-8,'bof');
a=fread(fid2,[1,1], 'double');
fseek(fid2,(8*2*k)-8,'bof');
b=fread(fid2,[1,1], 'double');
fseek(fid2,((8*2*n)-(8*2*k))-8,'bof');
c=fread(fid2,[1], 'double');

%L�information requise doit �tre directement lue du fichier 
%sans passer par une variable interm�diaire

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