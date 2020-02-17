function[bd,success]=supprimerCompte(bd,matricule)

%Fonction qui supprime le compte
%[bd,success]=supprimerCompte(bd,matricule)
%*********************************************************
%Nom du fichier: supprimerCompte.m
%Description: exercice 4 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: bd, matricule 
%Valeurs de retour: bd, success
%Date: 19 mars 2019
%*********************************************************

%initialisation variables
x=size(bd,2);
success=0;

%Vérification que le matricule correspond à un compte
while x>0
    if strcmpi(bd(x).matricule,matricule)==1
        bd(x)=[];   %Supression
        success=1;        
    end
    x=x-1;
end
end