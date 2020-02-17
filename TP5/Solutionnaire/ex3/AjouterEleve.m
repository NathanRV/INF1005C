function [ donnees ] = AjouterEleve(nom, mat, notes, donnees)
%************************************************************************
% AjouterEleve.m
% Fonction qui ajoute un nouvel eleve dans un tableau d'enregistrements
% Auteur: Ziad Aldirany
% Creation: 3-17-2019
%************************************************************************

if nargin==4
    nLignes = length(donnees);

    % Si la dernier ligne est vide, on y ajoute le nouvel eleve, sinon on passe
    % a la suivante
    if isempty(donnees(nLignes).Nom) && isempty(donnees(nLignes).Mat) && ...
            isempty(donnees(nLignes).Notes) && isempty(donnees(nLignes).Moy)
        LigneSuivante = nLignes;
    else
        LigneSuivante = nLignes + 1;
    end

    % Mise a jour du tableau
    donnees(LigneSuivante).Nom = nom;
    donnees(LigneSuivante).Mat = mat;
    donnees(LigneSuivante).Notes = notes;

    % Calcul de la moyenne ponderee
    pond = [0.2,0.35,0.45];
    donnees(LigneSuivante).Moy = sum(notes .* pond);

end
end

