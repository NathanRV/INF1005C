clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main1.m                      *
%*DESCRIPTION: Calcul mathématique             *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/03/26                 *
%*MISE À JOUR: 2019/04/03                      *
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
fid2=fopen('factorielle.txt','rt');

%Vérification existence et appel fonction
if fid2==-1
    %création fichier
    factorielle('factorielle.txt');
    
    %ouverture fichier
    fid2=fopen('factorielle.txt','rt');
end


chiffre=fscanf(fid2,'%e',1); % première lecture dans factorielle.txt
while ~isempty(chiffre)  % test de fin de fichier
        if n==chiffre % pour vérifier correspondance
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
fprintf('Résultat = %.14e',resultat);

%fermeture fichier
verification=fclose(fid2);

%vérification fermeture
if verification==-1
    warning('Le fichier ne s''est pas fermé correctement!');
end