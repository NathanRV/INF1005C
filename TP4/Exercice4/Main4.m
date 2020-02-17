clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Main4.m                      *
%*DESCRIPTION: Connexion, création de compte   *
%*             suppresion et déconnexion       *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CRÉATION: 2019/03/19                 *
%*MISE À JOUR: 2019/03/24                      *
%***********************************************

%Création base données
bd=struct('matricule','1337','nom','sudo','prenom','root','age',9000);
%Crée l'empreinte du mdp
[bd(1).hashedpw] = sha1('pass');

%Début loop
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
        
        if isempty(usager)==1 %correspond à un compte?
            fprintf('\n\nLe matricule et le mot de passe que vous avez entré ne correspondent pas à un usager.')
        elseif isempty(usager)==0
            
            m=1;
            while m==1
                %Menu
                fprintf('\n\nBienvenue %s',usager.prenom)
                fprintf('\n1. Afficher mes informations')
                fprintf('\n2. Changer mot de passe')
                fprintf('\n3. Créer un compte')
                fprintf('\n4. Supprimer un compte')
                fprintf('\n5. Déconnexion')
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
                            fprintf('Mot de passe modifié.')
                        else
                            fprintf('Le nouveau mot de passe ne peut être le même que l''ancien.')
                        end
                    case 3  %créer compte
                        fprintf('\nEntrer les informations du nouveau compte')
                        matricule=input('\nMatricule : ','s');
                        mdp=input('Mot de passe : ','s');
                        nom=input('Nom : ','s');
                        prenom=input('Prenom : ','s');
                        age=input('Age : ');
                        [bd,success]=creerCompte(bd,matricule,mdp,nom,prenom,age);
                        if success==1
                            fprintf('Compte crée.');
                        else
                            fprintf('Ce compte existe déjà')
                        end
                    case 4  %supprimer compte
                        matricule=input('Entrer le matricule du compte à supprimer : ','s');
                        [bd,success]=supprimerCompte(bd,matricule);
                        if success==1
                            fprintf('Compte supprimé.')
                        else
                            fprintf('Le numéro de matricule ne correspond pas à un compte.')
                        end
                    case 5  %déconnexion
                        m=0;
                        usager={};
                        fprintf('Vous avez été déconnecté, merci!')
                    case 6  %quitter
                        m=0;
                        t=0;
                        fprintf('Merci, à la prochaine!')
                end
            end
        end
    elseif C==2 %Quitter
        fprintf('\n\nMerci, à la prochaine!')
        t=0;
    end
end