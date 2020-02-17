function[varargout]=calculerPointageTotal(varargin)

%Fonction qui calcule le pointage scrabble de plusieurs mots en français
%[pointage]=calculerPointage(mot,langue)
%***********************************************************************
%Nom du fichier: calculerPointageTotal.m
%Description: exercice 3 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: mot(s) choisi(s) (chaîne(s) de caractères)
%Valeurs de retour: pointage(s) (valeur(s) numérique(s))
%Date: 15 mars 2019
%***********************************************************************

%Assigne langue française par défaut
langue='francais';

%vérification entrées
if nargout~=nargin || nargin<1
    error('Vous n''avez pas entrer suffisamment de données!')
else
    for i=1:length(varargin)    %pour chaque entrée
        if isstrprop(varargin{i},'alpha')==1    %vérification pas de chiffre
            %Appel fonction calcul
            [varargout{i}]=calculerPointage(varargin{i},langue);
        else %erreur si pas chaîne de caractères avec que des lettres
            error('%s n''est pas une chaîne de caractères qui ne contient que des lettres!',varargin{1})
        end
    end
end
end