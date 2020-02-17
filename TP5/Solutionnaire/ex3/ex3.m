%*************************************************
% ex2.m
% Solution exercice 3 du TP5 INF1005A
% Auteur: Ziad Aldirany
% Creation: 3-17-2019
%*************************************************

clear all
close all
clc

% Initialisation tableau vide
donnees = struct('Nom',[],'Mat',[],'Notes',[],'Moy',[]);

menu = '\n1) Entrer nouvel eleve manuellement\n2) Importer liste d''eleves depuis un fichier\n3) Exporter liste d''eleves dans un fichier\n4) Ecrire liste des eleves et leur moyenne dans un fichier\n5) Quiter \nChoix: ';

continuer = 1;

while continuer
    choix = input(menu);
    switch choix
        % Case 1 Ajouter nouvel eleve
        case 1
            nom = input('Entrer nom: ','s');
            mat = input('Entrer matricule: ');
            notes = input('Entrer le vecteur de notes: ');
            while any(notes<0) || any(notes>20)
                notes=input('Entrer le vecteur de notes: ');
            end
            donnees = AjouterEleve(nom, mat, notes, donnees);
            % Case 2 Importer liste d'eleves
        case 2
            nFichier = input('Entrer nom du fichier: ','s');
            donnees = LireFichier(nFichier, donnees);
            % Case 3 Ecrire liste de moyennes dans un fichier
        case 3
            nFichier = input('Entrer nom du fichier: ','s');
            EcrireMoyennes( nFichier, donnees );
            % Case 4 Terminer le programme
        case 4
            continuer = 0;
        otherwise
    end
    
    
end

