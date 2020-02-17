function[bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age)

%Fonction qui crée le compte
%[bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age)
%*********************************************************
%Nom du fichier: creerCompte.m
%Description: exercice 4 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: bd, matricule, mdp,nom,prenom,age 
%Valeurs de retour: bd, success
%Date: 19 mars 2019
%*********************************************************

%Vérification qu'un compte n'a pas déjà le même matricule
x=size(bd,2);
s=1;
while x>0
    if strcmpi(bd(x).matricule,matricule)==1
        s=0;
    end
    x=x-1;
end

%Age,prenom,nom et mdp peuvent être les mêmes

if s==0
    success=0;
elseif s==1
    %Hash le mdp
    [hashedpw] = sha1(mdp);
    %Création compte
    bd(end+1).matricule=matricule;
    bd(end).nom=nom;
    bd(end).prenom=prenom;
    bd(end).age=age;
    bd(end).hashedpw=hashedpw;
    %Réussite
    success=1;
end
end