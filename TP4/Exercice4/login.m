function[usager]=login(bd,matricule,mdp)

%Fonction qui supprime le compte
%[usager]=login(bd,matricule,mdp)
%*********************************************************
%Nom du fichier: login.m
%Description: exercice 4 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: bd, matricule, mdp 
%Valeurs de retour: usager (tableau d'enregistrement)
%Date: 19 mars 2019
%*********************************************************

%Initialise variable
usager={};
for x=1:size(bd,2)  
    %Compare matricule
    if strcmpi(bd(x).matricule,matricule)
        %Hash le mdp
        [hashedpw] = sha1(mdp);
        %Compare les 2 empreintes
        if strcmpi(bd(x).hashedpw,hashedpw)
            usager=bd(x);
        end
    end
end
end