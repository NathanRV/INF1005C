function [  ] = factorielle( nomFichier )

%************************************************************************
% factorielle.m
% Fonction qui calcule les factorielles de 1 à 170 et les enregistre dans
% un fichier
% TP5 de INF1005A - Programmation Procédurale MATLAB
% Auteur: François Léonard
% Creation: 3-21-2019
%************************************************************************


% Ouverture d'un fichier en écriture
fid = fopen(nomFichier,'wt');

if fid == -1
    error('Le fichier %s n''a pas put être créé.', nomFichier)
end

% Génération des résultats
resultats = 0:170;
resultats = [resultats;factorial(resultats)];

% Écriture
fprintf(fid,'%i\t%.15e\n',resultats); % 16 chiffres significatifs MAXIMUM pour double, pas plus de %.15e !

% Fermeture du fichier
if fclose(fid) == -1
    warning('Le fichié %s n''a pas été fermé', nomFichier)
end