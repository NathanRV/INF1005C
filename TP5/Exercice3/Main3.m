clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main3.m                      *
%*DESCRIPTION: Gestion notes étudiants         *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/03/26                 *
%*MISE À JOUR:                                 *
%***********************************************

%intialisation tableau d'enregistrement
donnees=struct('Nom','Albert','Mat','1234','Notes',[70 80 90],'Moy', []);

%initialisation variable
c=0;

while c~=4
    %Affichage menu
    fprintf('\n1) Ajouter nouvel élève\n')
    fprintf('2) Importer liste d''élèves depuis un fichier\n')
    fprintf('3) Écrire liste des élèves et leur moyenne dans un fichier\n')
    fprintf('4) Quitter\n')
    c=input('\nEntrez un choix : ');
    %Vérification entrée choix
    while c~=round(c) || c<1 || c>4
        c=input('\nEntrez un choix (nombre entier de 1 à 4): ');
    end
    switch c
        case 1  %Ajouter étudiant
            nom=input('Entrez le nom de l''étudiant : ','s');
            while any(isspace(nom)) %Vérification présence d'espace
                nom=input('Entrez le nom de l''étudiant sans espace (utilisez _) : ','s');
            end
            mat=input('Entrez le matricule : ','s');
            notes=input('Entrez le vecteur notes de l''étudiant : ');
            %Vérification entrée des notes
            while size(notes,2)~=3 || any(notes>20) || any(notes<0)
                notes=input('Entrez le vecteur notes de l''étudiant (entre 0 et 20 inclusivement) : ');
            end
            [donnees]=AjouterEleve(nom,mat,notes,donnees);
            fprintf('Étudiant ajouté!\n')
        case 2  %importer liste d'élèves
            nomFichier=input('Entrez le nom du fichier à importer : ','s');
            [donnees]=LireFichier(nomFichier, donnees); %fonction d'importation
        case 3 %Écrire liste élèves et moy dans fichier
            nomFichier=input('Entrez un nom de fichier : ', 's');
            EcrireMoyennes(nomFichier,donnees); %fonction d'écriture fichier
        case 4 %Quitter
            fprintf('Merci, au revoir!')
    end
end