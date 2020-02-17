function[]=EcrireMoyennes(nomFichier,donnees)

%Fonction qui �crit dans un fichier la liste �tudiants et leur moyenne
%EcrireMoyennes(nomFichier,donnees)
%*********************************************************
%Nom du fichier: EcrireMoyennes.m
%Description: exercice 3 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: nomFichier,donnees (chaine de caract�res et tableau d'enregistrement)
%Valeurs de retour: (fichier rempli)
%Date: 26 mars 2019
%*********************************************************

%ouverture fichier pour �criture
fd1=fopen(nomFichier,'wt');

%V�rification fichier
if fd1==-1
    warning('Probl�me � l''ouverture du fichier!')
elseif fd1~=-1
    for i=1:length(donnees) %pour chaque �tudiant, �criture nom et moyenne
        fprintf(fd1,'%s %.2f\n',donnees(i).Nom, donnees(i).Moy);
    end
    fprintf('Le fichier a �t� cr�e!\n');    %message de succ�s
end
%Fermeture fichier et v�rif
verif=fclose(fd1);
if verif~=0
    warning('Le fichier n''a pas pu se fermer!')
end
end
        