function[bd,success]=modifierMdp(bd,matricule,nouveauMdp)

%Fonction qui modifier le mot de passe
%[bd,success]=modifierMdp(bd,matricule,nouveauMdp)
%*********************************************************
%Nom du fichier: modifierMdp.m
%Description: exercice 4 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: bd, matricule, nouveauMdp
%Valeurs de retour: bd, success
%Date: 19 mars 2019
%*********************************************************

for x=1:size(bd,2)
    if strcmpi(bd(x).matricule,matricule)
        %Hash le mdp
        [hashedpw] = sha1(nouveauMdp);
        %Compare les 2 empreintes
        if strcmpi(bd(x).hashedpw,hashedpw)==1 
            success=0; %si idem, mdp reste inchangé
        elseif strcmpi(bd(x).hashedpw,hashedpw)==0
            bd(x).hashedpw=hashedpw; %change le mdp
            success=1;
        end
    end
end
end