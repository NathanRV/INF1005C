function[varargout]=calculerPointageTotal(varargin)

%Fonction qui calcule le pointage scrabble de plusieurs mots en fran�ais
%[pointage]=calculerPointage(mot,langue)
%***********************************************************************
%Nom du fichier: calculerPointageTotal.m
%Description: exercice 3 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: mot(s) choisi(s) (cha�ne(s) de caract�res)
%Valeurs de retour: pointage(s) (valeur(s) num�rique(s))
%Date: 15 mars 2019
%***********************************************************************

%Assigne langue fran�aise par d�faut
langue='francais';

%v�rification entr�es
if nargout~=nargin || nargin<1
    error('Vous n''avez pas entrer suffisamment de donn�es!')
else
    for i=1:length(varargin)    %pour chaque entr�e
        if isstrprop(varargin{i},'alpha')==1    %v�rification pas de chiffre
            %Appel fonction calcul
            [varargout{i}]=calculerPointage(varargin{i},langue);
        else %erreur si pas cha�ne de caract�res avec que des lettres
            error('%s n''est pas une cha�ne de caract�res qui ne contient que des lettres!',varargin{1})
        end
    end
end
end