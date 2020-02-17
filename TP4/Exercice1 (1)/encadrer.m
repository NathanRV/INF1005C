function[encadrer]=encadrer(c)
%Fonction qui encadre cha�ne envoy�
%[encadrer]=encadrer(c)
%***************************************************
%Nom du fichier: encadrer.m
%Description: exercice 1 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: c (cha�ne de caract�res)
%Valeurs de retour: encadrer (cha�ne de caract�res)
%Date: 24 mars 2019
%***************************************************

%V�rification entr�e 
if nargin==1 && ischar(c)
    encadrer=['****'];  %Pour les espaces (1�re ligne)
    for i=1:length(c)   %Autant d'�toiles que longueur de la cha�ne
    encadrer=[encadrer '*'];
    end
    encadrer=[encadrer '\n* %s *\n****'];   %Pour les espaces (3i�me ligne)
    for i=1:length(c)   %Autant d'�toiles que longueur de la cha�ne
    encadrer=[encadrer '*'];
    end
else
    error('Nombre d''entr�es incorrects ou ce n''est pas une cha�ne de caract�res')
end
end