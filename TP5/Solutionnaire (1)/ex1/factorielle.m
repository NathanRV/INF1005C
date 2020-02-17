function [  ] = factorielle( nomFichier )

%************************************************************************
% factorielle.m
% Fonction qui calcule les factorielles de 1 � 170 et les enregistre dans
% un fichier
% TP5 de INF1005A - Programmation Proc�durale MATLAB
% Auteur: Fran�ois L�onard
% Creation: 3-21-2019
%************************************************************************


% Ouverture d'un fichier en �criture
fid = fopen(nomFichier,'wt');

if fid == -1
    error('Le fichier %s n''a pas put �tre cr��.', nomFichier)
end

% G�n�ration des r�sultats
resultats = 0:170;
resultats = [resultats;factorial(resultats)];

% �criture
fprintf(fid,'%i\t%.15e\n',resultats); % 16 chiffres significatifs MAXIMUM pour double, pas plus de %.15e !

% Fermeture du fichier
if fclose(fid) == -1
    warning('Le fichi� %s n''a pas �t� ferm�', nomFichier)
end