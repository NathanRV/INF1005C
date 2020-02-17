%************************************************************************
% main.m
% Solution exercice 1, TP5 de INF1005A - Programmation Procédurale MATLAB
% Auteur: François Léonard
% Creation: 3-21-2019
%************************************************************************

clear all
clc

% Ouverture d'un fichier en lecture seule
nomFichier = 'factorielle3.txt';
fid = fopen(nomFichier,'rt');
creer = '';

% Si le fichier n'existe pas ou ne peut être ouvert, demander si
% l'utilisateur veut le créer
if fid == -1
    factorielle(nomFichier);
    fid = fopen(nomFichier,'rt');
    if fid == -1
        error('Le fichier %s n''a pas été ouvert', nomFichier)
    end
end
% Demande des renseignements
n = input('Entrez n : ');
while n < 1 || n > 170
    fprintf('n doit être un nombre entier entre 1 et 170\n');
    n = input('Entrez n : ');
end
k = input('Entrez k : ');
while k < 1 || k > n
    fprintf('k doit être un nombre entier entre 1 et n\n');
    k = input('Entrez k : ');
end


% Lecture
for i=0:n
    buffer = fscanf(fid,'%i %e',2);
    if i==k
        fac_k=buffer(2);
    end
    
    if i==n-k
        fac_nMk=buffer(2);
    end
    
    fac_n=buffer(2);
end

% Calcul
resultat = fac_n / (fac_k * fac_nMk);
fprintf('\nresultat = %.15g\n',resultat)


% Fermeture du fichier
if fclose(fid) == -1
    warning('Le fichié %s n''a pas été fermé',nomFichier)
end
