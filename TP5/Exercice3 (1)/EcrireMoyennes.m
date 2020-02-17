function[]=EcrireMoyennes(nomFichier,donnees)

%Fonction qui écrit dans un fichier la liste étudiants et leur moyenne
%EcrireMoyennes(nomFichier,donnees)
%*********************************************************
%Nom du fichier: EcrireMoyennes.m
%Description: exercice 3 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: nomFichier,donnees (chaine de caractères et tableau d'enregistrement)
%Valeurs de retour: (fichier rempli)
%Date: 26 mars 2019
%*********************************************************

%ouverture fichier pour écriture
fd1=fopen(nomFichier,'wt');

%Vérification fichier
if fd1==-1
    warning('Problème à l''ouverture du fichier!')
elseif fd1~=-1
    for i=1:length(donnees) %pour chaque étudiant, écriture nom et moyenne
        fprintf(fd1,'%s %.2f\n',donnees(i).Nom, donnees(i).Moy);
    end
    fprintf('Le fichier a été crée!\n');    %message de succès
end
%Fermeture fichier et vérif
verif=fclose(fd1);
if verif~=0
    warning('Le fichier n''a pas pu se fermer!')
end
end
        