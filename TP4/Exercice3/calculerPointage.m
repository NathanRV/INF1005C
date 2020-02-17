function[pointage]=calculerPointage(mot,langue)

%Fonction qui calcule le pointage scrabble dans une langue
%[pointage]=calculerPointage(mot,langue)
%*********************************************************
%Nom du fichier: calculerPointage.m
%Description: exercice 3 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: mot, langue (cha�ne de caract�res)
%Valeurs de retour: pointage (valeur num�rique)
%Date: 15 mars 2019
%*********************************************************

%Initialisation pointage
pointage=0;

%V�rification entr�e n'est que des lettres
if all(isstrprop(mot,'alpha'))==1 && all(isstrprop(langue,'alpha'))==1
    %V�rification langue
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
    else    %si langue non sp�cifi�
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
else %erreur si pas cha�ne de caract�res avec que des lettres
    error('%s ou %s n''est pas une cha�ne de caract�res qui ne contient que des lettres!',mot, langue)
end

