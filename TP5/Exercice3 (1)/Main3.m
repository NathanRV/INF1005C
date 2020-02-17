clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main3.m                      *
%*DESCRIPTION: Gestion notes �tudiants         *
%*                                             *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/26                 *
%*MISE � JOUR:                                 *
%***********************************************

%intialisation tableau d'enregistrement
donnees=struct('Nom','Albert','Mat','1234','Notes',[70 80 90],'Moy', []);

%initialisation variable
c=0;

while c~=4
    %Affichage menu
    fprintf('\n1) Ajouter nouvel �l�ve\n')
    fprintf('2) Importer liste d''�l�ves depuis un fichier\n')
    fprintf('3) �crire liste des �l�ves et leur moyenne dans un fichier\n')
    fprintf('4) Quitter\n')
    c=input('\nEntrez un choix : ');
    %V�rification entr�e choix
    while c~=round(c) || c<1 || c>4
        c=input('\nEntrez un choix (nombre entier de 1 � 4): ');
    end
    switch c
        case 1  %Ajouter �tudiant
            nom=input('Entrez le nom de l''�tudiant : ','s');
            while any(isspace(nom)) %V�rification pr�sence d'espace
                nom=input('Entrez le nom de l''�tudiant sans espace (utilisez _) : ','s');
            end
            mat=input('Entrez le matricule : ','s');
            notes=input('Entrez le vecteur notes de l''�tudiant : ');
            %V�rification entr�e des notes
            while size(notes,2)~=3 || any(notes>20) || any(notes<0)
                notes=input('Entrez le vecteur notes de l''�tudiant (entre 0 et 20 inclusivement) : ');
            end
            [donnees]=AjouterEleve(nom,mat,notes,donnees);
            fprintf('�tudiant ajout�!\n')
        case 2  %importer liste d'�l�ves
            nomFichier=input('Entrez le nom du fichier � importer : ','s');
            [donnees]=LireFichier(nomFichier, donnees); %fonction d'importation
        case 3 %�crire liste �l�ves et moy dans fichier
            nomFichier=input('Entrez un nom de fichier : ', 's');
            EcrireMoyennes(nomFichier,donnees); %fonction d'�criture fichier
        case 4 %Quitter
            fprintf('Merci, au revoir!')
    end
end