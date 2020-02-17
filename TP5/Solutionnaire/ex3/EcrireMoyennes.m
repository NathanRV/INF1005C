function [  ] = EcrireMoyennes( nomFichier, donnees )
%************************************************************************
% EcrireMoyennes.m
% Fonction qui exporte une liste des eleves avec sa moyenne
% Auteur: Ziad Aldirany
% Creation: 3-17-2019
%************************************************************************
if nargin==2
    % Ouverture du fichier en ecriture
    [fichier] = fopen(nomFichier,'wt');
    
    % Continue si ouverture correcte
    fichierCorrect = fichier ~= -1;
    if fichierCorrect
        nLignes = length(donnees);
        % Ecrire un eleve par ligne
        for i = 1 : nLignes
            fprintf(fichier,'%s ',donnees(i).Nom);
            fprintf(fichier,'%.2f ',donnees(i).Moy);
            fprintf(fichier,'\n');
        end
        fclose(fichier);
    else
        warning('Attention! fichier inaccessible');
    end

end
end

