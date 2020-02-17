clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main4.m                      *
%*DESCRIPTION: Connexion, cr�ation de compte   *
%*             suppresion et d�connexion       *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/03/19                 *
%*MISE � JOUR: 2019/03/24                      *
%***********************************************

%Cr�ation base donn�es
bd=struct('matricule','1337','nom','sudo','prenom','root','age',9000);
%Cr�e l'empreinte du mdp
[bd(1).hashedpw] = sha1('pass');

%D�but loop
t=1;
while t==1
    %Page d'accueil
fprintf('\n\nAccueil.\n1. Authentification\n2. Quitter')
    
    %Choix
    C=input('\n\nFaites un choix (1 ou 2) : ');
    if C==1 %Authentification
        matricule=input('\nEntrez un matricule : ','s');
        mdp=input('\nEntrez un mot de passe : ','s');
        [usager]=login(bd,matricule,mdp);
        
        if isempty(usager)==1 %correspond � un compte?
            fprintf('\n\nLe matricule et le mot de passe que vous avez entr� ne correspondent pas � un usager.')
        elseif isempty(usager)==0
            
            m=1;
            while m==1
                %Menu
                fprintf('\n\nBienvenue %s',usager.prenom)
                fprintf('\n1. Afficher mes informations')
                fprintf('\n2. Changer mot de passe')
                fprintf('\n3. Cr�er un compte')
                fprintf('\n4. Supprimer un compte')
                fprintf('\n5. D�connexion')
                fprintf('\n6. Quitter')
                c=input('\n\nFaites un choix (1-6): ');
                switch c
                    case 1 %affiche infos
                        fprintf('\nMatricule : %s',usager.matricule)
                        fprintf('\nNom : %s', usager.nom)
                        fprintf('\nPrenom : %s', usager.prenom)
                        fprintf('\nAge : %d', usager.age)
                        fprintf('\nHash : %s', usager.hashedpw)
                    case 2  %change mdp
                        matricule=usager.matricule;
                        nouveauMdp=input('Entrer le nouveau mot de passe : ','s');
                        [bd,success]=modifierMdp(bd,matricule,nouveauMdp);
                        if success==1
                            fprintf('Mot de passe modifi�.')
                        else
                            fprintf('Le nouveau mot de passe ne peut �tre le m�me que l''ancien.')
                        end
                    case 3  %cr�er compte
                        fprintf('\nEntrer les informations du nouveau compte')
                        matricule=input('\nMatricule : ','s');
                        mdp=input('Mot de passe : ','s');
                        nom=input('Nom : ','s');
                        prenom=input('Prenom : ','s');
                        age=input('Age : ');
                        [bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age);
                        if success==1
                            fprintf('Compte cr�e.');
                        else
                            fprintf('Ce compte existe d�j�')
                        end
                    case 4  %supprimer compte
                        matricule=input('Entrer le matricule du compte � supprimer : ','s');
                        [bd,success]=supprimerCompte(bd,matricule);
                        if success==1
                            fprintf('Compte supprim�.')
                        else
                            fprintf('Le num�ro de matricule ne correspond pas � un compte.')
                        end
                    case 5  %d�connexion
                        m=0;
                        usager={};
                        fprintf('Vous avez �t� d�connect�, merci!')
                    case 6  %quitter
                        m=0;
                        t=0;
                        fprintf('Merci, � la prochaine!')
                end
            end
        end
    elseif C==2 %Quitter
        fprintf('\n\nMerci, � la prochaine!')
        t=0;
    end
end