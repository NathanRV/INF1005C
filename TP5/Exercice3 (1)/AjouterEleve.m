function[donnees]=AjouterEleve(nom, mat, notes, donnees)

%Fonction qui ajoute un élève
%[donnees]=AjouterEleve(nom, mat, notes, donnees)
%*********************************************************
%Nom du fichier: AjouterEleve.m
%Description: exercice 3 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: nom, mat, notes, donnees (chaîne de caractères)
%Valeurs de retour: donnees(tableau d'enregistrement)
%Date: 26 mars 2019
%*********************************************************

%initialise variable
i=1;
%Trouve position libre s'il y en a dans le tableau d'enregistrement
while i<=length(donnees) && ~isempty(donnees(i)) 
    i=i+1; 
end     %s'il y en a pas i=end+1

%Calcul moyenne
moy=Moyenne(notes);

%Entrée des données
donnees(i)=struct('Nom',nom,'Mat',mat,'Notes',notes,'Moy',moy);

end