function[donnees]=LireFichier(nomFichier,donnees)

%Fonction qui importe un fichier dans le tableau d'enregistrement
%[donnees]=LireFichier(nomFichier,donnees)
%*********************************************************
%Nom du fichier: LireFichier.m
%Description: exercice 3 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: nomFichier,donnees (chaine de caractères et tableau d'enregistrement)
%Valeurs de retour: donnees(tableau d'enregistrement)
%Date: 26 mars 2019
%*********************************************************

%ouverture fichier
fid1=fopen(nomFichier);

%Vérification fichier
if fid1==-1
    warning('Fichier inaccessible!')
elseif fid1~=-1
        nom=fscanf(fid1,'%s',1); % lecture préliminaire 
    while ~isempty(nom)  % test de fin de fichier
        mat=fscanf(fid1,'%s',1); % Pour lire et stocker le matricule
        notes=fscanf(fid1,'%f',[1 3]); % Pour lire et stocker le vecteur des 3 notes
        [moy]=Moyenne(notes); %Calcul moyenne
        [donnees]=AjouterEleve(nom, mat, notes, donnees); %ajout d'élèves
        nom=fscanf(fid1,'%s',1); % lecture suivante
    end
    fprintf('Fichier importé!\n')   %messages succès
end

%Fermeture fichier et vérif
verif=fclose(fid1);
if verif~=0
    warning('Le fichier n''a pas pu se fermer!')
end

end
        
    
    
    