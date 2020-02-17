clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Calcul mathématique             *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/03/26                 *
%*MISE À JOUR:                                 *
%***********************************************


%Entrée et vérification de n
n=input('Entrez n : ');
while isnumeric(n)==0 || n<1 || n>170
    fprintf('n doit être un nombre entier entre 1 et 170.\n')
    n=input('Entrez n : ');
end

%Entrée et vérification de k
k=input('Entrez k : ');
while isnumeric(n)==0 || k<1 || k>n
    fprintf('k doit être un nombre entier entre 1 et n.\n');
    k=input('Entrez k : ');
end

%ouverture fichier, fid=-1 veut dire échec
fid2=fopen('factorielle.bin','r');

%Vérification existence et appel fonction
if fid2==-1
    %création fichier
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

%L’information requise doit être directement lue du fichier 
%sans passer par une variable intermédiaire

%Calcul
resultat=(a/(b*c));


%affichage
fprintf('Résultat = %.14e',resultat);

%fermeture fichier
verification=fclose(fid2);

%vérification fermeture
if verification==-1
    warning('Le fichier ne s''est pas fermé correctement!');
end