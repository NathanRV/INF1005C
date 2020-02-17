function[]=factorielle(nomFichier)

%Fonction qui calcule la factorielle des chiffres 1 à 170
%[]=factorielle(nomFichier)
%*********************************************************
%Nom du fichier: factorielle.m
%Description: exercice 1 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: nomfichier (chaîne de caractères)
%Valeurs de retour: (valeur numérique)
%Date: 26 mars 2019
%*********************************************************

%Ouverture et écriture fichier
fid1=fopen(nomFichier, 'w');

%Vérification de l'ouverture
if fid1~=-1
    %pour les chiffres 1 à 170, chiffre et factoriel
    for i=1:170
        %écriture dans fichier
        fwrite(fid1, i,'double');
        %écriture dans fichier
        fwrite(fid1, factorial(i),'double');
    end
end

%fermeture fichier
verification=fclose(fid1);

%vérification fermeture
if verification==-1
    warning('Le fichier ne s''est pas fermé correctement!');
end
end