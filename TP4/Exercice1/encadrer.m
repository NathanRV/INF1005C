function[encadrer]=encadrer(c)
%Fonction qui encadre chaîne envoyé
%[encadrer]=encadrer(c)
%***************************************************
%Nom du fichier: encadrer.m
%Description: exercice 1 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: c (chaîne de caractères)
%Valeurs de retour: encadrer (chaîne de caractères)
%Date: 24 mars 2019
%***************************************************

%Vérification entrée 
if nargin==1 && ischar(c)
    encadrer=['****'];  %Pour les espaces (1ère ligne)
    for i=1:length(c)   %Autant d'étoiles que longueur de la chaîne
    encadrer=[encadrer '*'];
    end
    encadrer=[encadrer '\n* %s *\n****'];   %Pour les espaces (3ième ligne)
    for i=1:length(c)   %Autant d'étoiles que longueur de la chaîne
    encadrer=[encadrer '*'];
    end
else
    error('Nombre d''entrées incorrects ou ce n''est pas une chaîne de caractères')
end
end