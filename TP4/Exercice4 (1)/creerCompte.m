function[bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age)

%Fonction qui cr�e le compte
%[bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age)
%*********************************************************
%Nom du fichier: creerCompte.m
%Description: exercice 4 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: bd, matricule, mdp,nom,prenom,age 
%Valeurs de retour: bd, success
%Date: 19 mars 2019
%*********************************************************

%V�rification qu'un compte n'a pas d�j� le m�me matricule
x=size(bd,2);
s=1;
while x>0
    if strcmpi(bd(x).matricule,matricule)==1
        s=0;
    end
    x=x-1;
end

%Age,prenom,nom et mdp peuvent �tre les m�mes

if s==0
    success=0;
elseif s==1
    %Hash le mdp
    [hashedpw] = sha1(mdp);
    %Cr�ation compte
    bd(end+1).matricule=matricule;
    bd(end).nom=nom;
    bd(end).prenom=prenom;
    bd(end).age=age;
    bd(end).hashedpw=hashedpw;
    %R�ussite
    success=1;
end
end