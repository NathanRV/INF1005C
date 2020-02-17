function [ donnees ] = LireFichier( nomFichier, donnees )
%************************************************************************
% LireFichier.m
% Fonction qui importe une liste d'eleves depuis un fichier texte
% Auteur: Ziad Aldirany
% Creation: 3-17-2019
%************************************************************************
if nargin==2
    [fichier] = fopen(nomFichier,'rt');
    
    % Continue si ouverture correcte
    fichierCorrect = fichier ~= -1;
    finDuFichier = 0;
    if fichierCorrect
        % Lire un eleve par ligne jusqu'a la fin du fichier
        while ~finDuFichier
            nom = fscanf(fichier,'%s',1);
            if isempty(nom)
                finDuFichier = 1;
            else
                matricule = fscanf(fichier, '%d', 1);
                notes = fscanf(fichier, '%f', 3);
                notes = notes';
                donnees = AjouterEleve(nom, matricule, notes, donnees);
            end
        end
        fclose(fichier);
    else
        warning('Attention! fichier inaccessible');  
    end
end
end

