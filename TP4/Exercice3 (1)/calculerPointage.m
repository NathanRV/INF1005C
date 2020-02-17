function[pointage]=calculerPointage(mot,langue)

%Fonction qui calcule le pointage scrabble dans une langue
%[pointage]=calculerPointage(mot,langue)
%*********************************************************
%Nom du fichier: calculerPointage.m
%Description: exercice 3 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: mot, langue (chaîne de caractères)
%Valeurs de retour: pointage (valeur numérique)
%Date: 15 mars 2019
%*********************************************************

%Initialisation pointage
pointage=0;

%Vérification entrée n'est que des lettres
if all(isstrprop(mot,'alpha'))==1 && all(isstrprop(langue,'alpha'))==1
    %Vérification langue
    if strcmpi(langue,'ANGLAIS')==1
        %Chargement de grille
        load('anglais.mat', 'grille');
        %calcul
        for x=1:length(mot) 
            for y=65:90
                if double(upper(mot(x)))==y
                    pointage=pointage+grille(y-64);
                end
            end
        end
    else    %si langue non spécifié
        %Chargement de grille
        load('francais.mat', 'grille');
        %Calcul
        for x=1:length(mot)
            for y=65:90
                if double(upper(mot(x)))==y
                    pointage=pointage+grille(y-64);
                end
            end
        end
    end
else %erreur si pas chaîne de caractères avec que des lettres
    error('%s ou %s n''est pas une chaîne de caractères qui ne contient que des lettres!',mot, langue)
end

