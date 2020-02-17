clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice4.m                  *
%*DESCRIPTION: Jeu de cartes                   *
%*             <<Spécial 8>>                   *
%*                                             *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CRÉATION: 2019/02/13                 *
%*MISE À JOUR: 2019/02/23                      *
%***********************************************

%Message d'accueil
fprintf('***Bienvenue au Jeu de cartes ''''Spécial 8'''' ***\n')

%Nombre de joueurs et vérification
j=input('\nEntrez le nombre de joueurs dans la partie : ');
while j<2  || j>5
    j=input('\nEntrez le nombre de joueurs dans la partie compris entre 2 et 5 joueurs : ');
end

%Nombre de cartes et vérification
n=input('\nEntrez le nombre de cartes à distribuer à chaque joueur : ');
while n<3 || n>8
    n=input('\nEntrez le nombre de cartes à distribuer à chaque joueur (compris entre 3 et 8) : ');
end

%Création de la pioche
%Trèfle
    Pioche(1).Trefle='as';
    Pioche(2).Trefle='2';
    Pioche(3).Trefle='3';
    Pioche(4).Trefle='4';
    Pioche(5).Trefle='5';
    Pioche(6).Trefle='6';
    Pioche(7).Trefle='7';
    Pioche(8).Trefle='8';
    Pioche(9).Trefle='9';
    Pioche(10).Trefle='10';
    Pioche(11).Trefle='Valet';
    Pioche(12).Trefle='Reine';
    Pioche(13).Trefle='Roi';
%Carreau
    Pioche(1).Carreau='as';
    Pioche(2).Carreau='2';
    Pioche(3).Carreau='3';
    Pioche(4).Carreau='4';
    Pioche(5).Carreau='5';
    Pioche(6).Carreau='6';
    Pioche(7).Carreau='7';
    Pioche(8).Carreau='8';
    Pioche(9).Carreau='9';
    Pioche(10).Carreau='10';
    Pioche(11).Carreau='Valet';
    Pioche(12).Carreau='Reine';
    Pioche(13).Carreau='Roi';
%Pique
    Pioche(1).Pique='as';
    Pioche(2).Pique='2';
    Pioche(3).Pique='3';
    Pioche(4).Pique='4';
    Pioche(5).Pique='5';
    Pioche(6).Pique='6';
    Pioche(7).Pique='7';
    Pioche(8).Pique='8';
    Pioche(9).Pique='9';
    Pioche(10).Pique='10';
    Pioche(11).Pique='Valet';
    Pioche(12).Pique='Reine';
    Pioche(13).Pique='Roi';
%Coeur
    Pioche(1).Coeur='as';
    Pioche(2).Coeur='2';
    Pioche(3).Coeur='3';
    Pioche(4).Coeur='4';
    Pioche(5).Coeur='5';
    Pioche(6).Coeur='6';
    Pioche(7).Coeur='7';
    Pioche(8).Coeur='8';
    Pioche(9).Coeur='9';
    Pioche(10).Coeur='10';
    Pioche(11).Coeur='Valet';
    Pioche(12).Coeur='Reine';
    Pioche(13).Coeur='Roi';
    
%Initialisation Paquet
    Paquet{1,n}={};
    
%Distribution cartes    
for  x=1:j      %Pour le nbr de joueur
    i=n;
    while i>0   %Pendant qu'il faut encore distribuer des cartes
        %Choix du type et numéro cartes
        Opt=randi([1,4]);
        Onum=randi([1, 13]);
        %Type
        switch Opt
            case 1  %Trefle
                Paquet{end,i}{1}='Trefle';
                %Choix des cartes dépendant du n choisi 
                switch Onum
                    case 1
                        Paquet{end,i}{2}=Pioche(1).Trefle;
                        Pioche(1).Trefle=[];
                    case 2
                        Paquet{end,i}{2}=Pioche(2).Trefle;
                        Pioche(2).Trefle=[];
                    case 3
                        Paquet{end,i}{2}=Pioche(3).Trefle;
                        Pioche(3).Trefle=[];
                    case 4
                        Paquet{end,i}{2}=Pioche(4).Trefle;
                        Pioche(4).Trefle=[];
                    case 5
                        Paquet{end,i}{2}=Pioche(5).Trefle;
                        Pioche(5).Trefle=[];
                    case 6
                        Paquet{end,i}{2}=Pioche(6).Trefle;
                        Pioche(6).Trefle=[];
                    case 7
                        Paquet{end,i}{2}=Pioche(7).Trefle;
                        Pioche(7).Trefle=[];
                    case 8
                        Paquet{end,i}{2}=Pioche(8).Trefle;
                        Pioche(8).Trefle=[];
                    case 9
                        Paquet{end,i}{2}=Pioche(9).Trefle;
                        Pioche(9).Trefle=[];
                    case 10
                        Paquet{end,i}{2}=Pioche(10).Trefle;
                        Pioche(10).Trefle=[];
                    case 11
                        Paquet{end,i}{2}=Pioche(11).Trefle;
                        Pioche(11).Trefle=[];
                    case 12
                        Paquet{end,i}{2}=Pioche(12).Trefle;
                        Pioche(12).Trefle=[];
                    case 13
                        Paquet{end,i}{2}=Pioche(13).Trefle;
                        Pioche(13).Trefle=[];
                end                    
                
            case 2  %Carreau
                Paquet{end,i}{1}='Carreau';
                %Choix des cartes dépendant du n choisi 
                switch Onum
                    case 1
                        Paquet{end,i}{2}=Pioche(1).Carreau;
                        Pioche(1).Carreau=[];
                    case 2
                        Paquet{end,i}{2}=Pioche(2).Carreau;
                        Pioche(2).Carreau=[];
                    case 3
                        Paquet{end,i}{2}=Pioche(3).Carreau;
                        Pioche(3).Carreau=[];
                    case 4
                        Paquet{end,i}{2}=Pioche(4).Carreau;
                        Pioche(4).Carreau=[];
                    case 5
                        Paquet{end,i}{2}=Pioche(5).Carreau;
                        Pioche(5).Carreau=[];
                    case 6
                        Paquet{end,i}{2}=Pioche(6).Carreau;
                        Pioche(6).Carreau=[];
                    case 7
                        Paquet{end,i}{2}=Pioche(7).Carreau;
                        Pioche(7).Carreau=[];
                    case 8
                        Paquet{end,i}{2}=Pioche(8).Carreau;
                        Pioche(8).Carreau=[];
                    case 9
                        Paquet{end,i}{2}=Pioche(9).Carreau;
                        Pioche(9).Carreau=[];
                    case 10
                        Paquet{end,i}{2}=Pioche(10).Carreau;
                        Pioche(10).Carreau=[];
                    case 11
                        Paquet{end,i}{2}=Pioche(11).Carreau;
                        Pioche(11).Carreau=[];
                    case 12
                        Paquet{end,i}{2}=Pioche(12).Carreau;
                        Pioche(12).Carreau=[];
                    case 13
                        Paquet{end,i}{2}=Pioche(13).Carreau;
                        Pioche(13).Carreau=[];
                end
            case 3  %Coeur
                Paquet{end,i}{1}='Coeur';
                %Choix des cartes dépendant du n choisi 
                switch Onum
                    case 1
                        Paquet{end,i}{2}=Pioche(1).Coeur;
                        Pioche(1).Coeur=[];
                    case 2
                        Paquet{end,i}{2}=Pioche(2).Coeur;
                        Pioche(2).Coeur=[];
                    case 3
                        Paquet{end,i}{2}=Pioche(3).Coeur;
                        Pioche(3).Coeur=[];
                    case 4
                        Paquet{end,i}{2}=Pioche(4).Coeur;
                        Pioche(4).Coeur=[];
                    case 5
                        Paquet{end,i}{2}=Pioche(5).Coeur;
                        Pioche(5).Coeur=[];
                    case 6
                        Paquet{end,i}{2}=Pioche(6).Coeur;
                        Pioche(6).Coeur=[];
                    case 7
                        Paquet{end,i}{2}=Pioche(7).Coeur;
                        Pioche(7).Coeur=[];
                    case 8
                        Paquet{end,i}{2}=Pioche(8).Coeur;
                        Pioche(8).Coeur=[];
                    case 9
                        Paquet{end,i}{2}=Pioche(9).Coeur;
                        Pioche(9).Coeur=[];
                    case 10
                        Paquet{end,i}{2}=Pioche(10).Coeur;
                        Pioche(10).Coeur=[];
                    case 11
                        Paquet{end,i}{2}=Pioche(11).Coeur;
                        Pioche(11).Coeur=[];
                    case 12
                        Paquet{end,i}{2}=Pioche(12).Coeur;
                        Pioche(12).Coeur=[];
                    case 13
                        Paquet{end,i}{2}=Pioche(13).Coeur;
                        Pioche(13).Coeur=[];
                end
                
            case 4  %Pique
                Paquet{end,i}{1}='Pique';
                %Choix des cartes dépendant du n choisi 
                switch Onum
                    case 1
                        Paquet{end,i}{2}=Pioche(1).Pique;
                        Pioche(1).Pique=[];
                    case 2
                        Paquet{end,i}{2}=Pioche(2).Pique;
                        Pioche(2).Pique=[];
                    case 3
                        Paquet{end,i}{2}=Pioche(3).Pique;
                        Pioche(3).Pique=[];
                    case 4
                        Paquet{end,i}{2}=Pioche(4).Pique;
                        Pioche(4).Pique=[];
                    case 5
                        Paquet{end,i}{2}=Pioche(5).Pique;
                        Pioche(5).Pique=[];
                    case 6
                        Paquet{end,i}{2}=Pioche(6).Pique;
                        Pioche(6).Pique=[];
                    case 7
                        Paquet{end,i}{2}=Pioche(7).Pique;
                        Pioche(7).Pique=[];
                    case 8
                        Paquet{end,i}{2}=Pioche(8).Pique;
                        Pioche(8).Pique=[];
                    case 9
                        Paquet{end,i}{2}=Pioche(9).Pique;
                        Pioche(9).Pique=[];
                    case 10
                        Paquet{end,i}{2}=Pioche(10).Pique;
                        Pioche(10).Pique=[];
                    case 11
                        Paquet{end,i}{2}=Pioche(11).Pique;
                        Pioche(11).Pique=[];
                    case 12
                        Paquet{end,i}{2}=Pioche(12).Pique;
                        Pioche(12).Pique=[];
                    case 13
                        Paquet{end,i}{2}=Pioche(13).Pique;
                        Pioche(13).Pique=[];
                end %des numéros           
        end  %des types      
        i=i-1;
        if isempty(Paquet{end,i+1}{2})==1   %Si carte était déjà pigé
            i=i+1;      %Recommencer
        end
    end     %du nombre de cartes
    
    %Ajout d'une ligne pour prochain joueur
    Paquet{end+1,1}={};
    
end     %du nombre de joueur
 
%Première carte
cn=[];
while isempty(cn)==1
    M=randi([1,4]);
    N=randi([1,13]);
    if M==1
        ct='Trefle';
        cn=Pioche(N).Trefle;
        Pioche(N).Trefle=[];
    elseif M==2
        ct='Carreau';
        cn=Pioche(N).Carreau;
        Pioche(N).Carreau=[];
    elseif M==3
        ct='Pique';
        cn=Pioche(N).Pique;
        Pioche(N).Pique=[];
    elseif M==4
        ct='Coeur';
        cn=Pioche(N).Coeur;
        Pioche(N).Coeur=[];
    end
end

%Début partie
T=3;
while T>0
    for i=1:j   %Pour tous les joueurs
    %Début tour
    t=1;
        while t>0
            %Menu joueur
            fprintf('\n \n** Menu Joueur %d **',i);
            fprintf('\n 1- Voir vos cartes');
            fprintf('\n 2- Jouer une carte');
            fprintf('\n 3- Piocher');

            %Choix
            c=input('\nChoix : ');
            while c~=1 && c~=2 && c~=3
                c=input('Choix : ');
            end 

            %Jeu
            if c==1
                %Montrez cartes
                fprintf('Voici vos cartes : ');
                %Organisation des cartes
                for x=1:size(Paquet,2)
                    p=1;
                    while isempty(Paquet{i,x})==1 && x+p<=size(Paquet,2)
                        Paquet{i,x}=Paquet{i,x+p};
                        Paquet{i,x+p}=[];
                        p=p+1;
                    end
                    if isempty(Paquet{i,x})==0
                        fprintf('\nCarte %d : %s de %s ',x,Paquet{i,x}{2},Paquet{i,x}{1});
                    end
                end
                %Afficher ce qu'il y a sur table
                fprintf('\n\n>La Carte : %s de %s est sur la table.',cn,ct)
    
            elseif c==2
                %Afficher ce qu'il y a sur table
                fprintf('\n>La Carte : %s de %s est sur la table.\n',cn,ct)
            
                %Jouer carte
                fprintf('\nChoisissez une carte à jouer : ')
                for x=1:size(Paquet,2) 
                    %Réorganisation des cartes
                    p=1;
                    while isempty(Paquet{i,x})==1 && x+p<=size(Paquet,2)
                        Paquet{i,x}=Paquet{i,x+p};
                        Paquet{i,x+p}=[];
                        p=p+1;
                    end
                    if isempty(Paquet{i,x})==0
                        fprintf('\nCarte %d : %s de %s ',x,Paquet{i,x}{2},Paquet{i,x}{1});
                    end
                end
                num=input('\nNuméro de la carte à jouer : ');
                
                %Chiffre valable
                while num>size(Paquet,2)
                    num=input('\nNuméro de la carte à jouer : ');
                end
                
                %As=pige pour le prochain
                if strcmpi(Paquet{i,num}{2},'as')==1
                    if i<j
                        Paquet{i+1,end+1}{2}={};
                    elseif i==j
                        Paquet{1,end+1}{2}={};
                    end
                    if i<j
                        C=0;
                        M=randi([1,4]);
                        while isempty(Paquet{i+1,end}{2})==1 && C<=52
                            F=1;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Trefle';
                                Paquet{i+1,end}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Carreau';
                                Paquet{i+1,end}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Pique';
                                Paquet{i+1,end}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Coeur';
                                Paquet{i+1,end}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end
                        end
                        
                    %Si le dernier joueur
                    elseif i==j
                        C=0;
                        M=randi([1,4]);
                        while isempty(Paquet{1,end}{2})==1 && C<=52
                            F=0;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Trefle';
                                Paquet{1,end}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Carreau';
                                Paquet{1,end}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Pique';
                                Paquet{1,end}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Coeur';
                                Paquet{1,end}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end    
                        end
                    end
                    
                    %Si pioche vide
                    if i==j && isempty(Paquet{1,end}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{1,end}{1}={};
                    elseif i<j && isempty(Paquet{i+1,end}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{i+1,end}{1}={};
                    else
                        fprintf('Pénalité d''une carte pour le joueur suivant.')
                    end
                    ct=Paquet{i,num}{1};
                    cn=Paquet{i,num}{2};
                    Paquet{i,num}={};    %efface carte
                                                
                %2=pige pour le prochain
                elseif strcmpi(Paquet{i,num}{2},'2')==1
                    
                    %initialisation de cellules
                    if i<j
                        Paquet{i+1,end+2}{2}={};
                        Paquet{i+1,end-1}{2}={};
                    elseif i==j
                        Paquet{1,end+2}{2}={};
                        Paquet{1,end-1}{2}={};
                    end    
                    
                    %1ere carte
                    C=0;
                    if i<j
                        M=randi([1,4]);
                        while isempty(Paquet{i+1,end-1}{2})==1 && C<=52
                            F=1;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{i+1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end-1}{1}='Trefle';
                                Paquet{i+1,end-1}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{i+1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end-1}{1}='Carreau';
                                Paquet{i+1,end-1}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{i+1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end-1}{1}='Pique';
                                Paquet{i+1,end-1}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{i+1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end-1}{1}='Coeur';
                                Paquet{i+1,end-1}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end 
                        end
                        
                    %Si le dernier joueur
                    elseif i==j
                        C=0;
                        M=randi([1,4]);
                        while isempty(Paquet{1,end-1}{2})==1 && C<=52
                            F=1;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end-1}{1}='Trefle';
                                Paquet{1,end-1}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end-1}{1}='Carreau';
                                Paquet{1,end-1}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end-1}{1}='Pique';
                                Paquet{1,end-1}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{1,end-1}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end-1}{1}='Coeur';
                                Paquet{1,end-1}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end     
                        end
                    end
                    
                    %Si pioche vide
                    if i==j && isempty(Paquet{1,end-1}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{1,end-1}{1}={};
                    elseif i<j && isempty(Paquet{i+1,end-1}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{i+1,end-1}{1}={};
                    end
                    
                    %2ieme carte
                    if i<j
                        C=0;
                        M=randi([1,4]);
                        while isempty(Paquet{i+1,end})==1 && C<=52
                            F=1;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Trefle';
                                Paquet{i+1,end}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Carreau';
                                Paquet{i+1,end}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Pique';
                                Paquet{i+1,end}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{i+1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{i+1,end}{1}='Coeur';
                                Paquet{i+1,end}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end
                        end
                                                
                    %Si le dernier joueur
                    elseif i==j
                        C=0;
                        M=randi([1,4]);
                        while isempty(Paquet{1,end}{2})==1 && C<=52
                            F=1;
                            N=randi([1,13]);
                            while M==1 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Trefle';
                                Paquet{1,end}{2}=Pioche(N).Trefle;
                                Pioche(N).Trefle=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==2 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Carreau';
                                Paquet{1,end}{2}=Pioche(N).Carreau;
                                Pioche(N).Carreau=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==3 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Pique';
                                Paquet{1,end}{2}=Pioche(N).Pique;
                                Pioche(N).Pique=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            while M==4 && isempty(Paquet{1,end}{2})==1 && F<14
                                C=C+1;
                                F=F+1;
                                Paquet{1,end}{1}='Coeur';
                                Paquet{1,end}{2}=Pioche(N).Coeur;
                                Pioche(N).Coeur=[];
                                %Change de numéro entre chaque loop de while
                                if N==13
                                    N=1;
                                else
                                    N=N+1;
                                end
                            end
                            %Changement de type
                            if M==4
                                M=1;
                            else
                                M=M+1;
                            end
                        end
                    end
                    
                    %Si pioche vide
                    if i==j && isempty(Paquet{1,end}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{1,end}{1}={};
                    elseif i<j && isempty(Paquet{i+1,end}{2})==1
                        fprintf('La pioche est vide!');
                        Paquet{i+1,end}{1}={};
                    else
                        fprintf('Pénalité de deux cartes pour le joueur suivant.')
                    end
                    
                    ct=Paquet{i,num}{1};
                    cn=Paquet{i,num}{2};
                    Paquet{i,num}={};    %efface carte
                                   
                %Même type ou 8
                elseif strcmpi(Paquet{i,num}{1},ct)==1 || strcmpi(Paquet{i,num}{2},'8')==1
                    ct=Paquet{i,num}{1};
                    cn=Paquet{i,num}{2};
                    Paquet{i,num}={};    %efface carte
                
                %Même chiffre
                elseif strcmpi(Paquet{i,num}{2},cn)==1
                    ct=Paquet{i,num}{1};
                    cn=Paquet{i,num}{2};
                    Paquet{i,num}={};    %efface carte
                
                %Sinon pige 2 cartes
                else
                    Paquet{i,end+2}{2}={};
                    
                    %1ere carte
                    while isempty(Paquet{i,end-1})==1
                        F=0;
                        M=randi([1,4]);
                        N=randi([1,13]);
                        while M==1 && isempty(Paquet{i,end-1}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end-1}{1}='Trefle';
                            Paquet{i,end-1}{2}=Pioche(N).Trefle;
                            Pioche(N).Trefle=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                               N=1;
                            else
                               N=N+1;
                            end
                        end
                        while M==2 && isempty(Paquet{i,end-1}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end-1}{1}='Carreau';
                            Paquet{i,end-1}{2}=Pioche(N).Carreau;
                            Pioche(N).Carreau=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                        while M==3 && isempty(Paquet{i,end-1}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end-1}{1}='Pique';
                            Paquet{i,end-1}{2}=Pioche(N).Pique;
                            Pioche(N).Pique=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                        while M==4 && isempty(Paquet{i,end-1}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end-1}{1}='Coeur';
                            Paquet{i,end-1}{2}=Pioche(N).Coeur;
                            Pioche(N).Coeur=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                        
                        %Si pioche vide
                        if isempty(Paquet{i,end-1}{2})==1
                            fprintf('La pioche est vide!');
                            Paquet{i,end-1}{1}={};
                        end
                    end
                    
                    %2ieme carte
                    while isempty(Paquet{i,end})==1
                        F=0;
                        M=randi([1,4]);
                        N=randi([1,13]);
                        while M==1 && isempty(Paquet{i,end}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end}{1}='Trefle';
                            Paquet{i,end}{2}=Pioche(N).Trefle;
                            Pioche(N).Trefle=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                        while M==2 && isempty(Paquet{i,end}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end}{1}='Carreau';
                            Paquet{i,end}{2}=Pioche(N).Carreau;
                            Pioche(N).Carreau=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                        while M==3 && isempty(Paquet{i,end}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end}{1}='Pique';
                            Paquet{i,end}{2}=Pioche(N).Pique;
                            Pioche(N).Pique=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                           end
                        end
                        while M==4 && isempty(Paquet{i,end}{2})==1 && F<14
                            F=F+1;
                            Paquet{i,end}{1}='Coeur';
                            Paquet{i,end}{2}=Pioche(N).Coeur;
                            Pioche(N).Coeur=[];
                            %Change de numéro entre chaque loop de while
                            if N==13
                                N=1;
                            else
                                N=N+1;
                            end
                        end
                            
                        %Si pioche vide
                        if isempty(Paquet{i,end}{2})==1
                            fprintf('La pioche est vide!');
                            Paquet{i,end}{1}={};
                        end
                    end 
                    
                end  %des tests sur type et valeur pour carte jouée
                t=t-1; %Fin tour du joueur
            elseif c==3
                %Afficher ce qu'il y a sur table
                fprintf('\n>La Carte : %s de %s est sur la table.\n',cn,ct)
                
                Paquet{i,end+1}{2}={}; %initialise l'espace pour carte
                
                %Piger 1 carte
                C=0; %Variable servant à faire les 52 cartes
                M=randi([1,4]);  %Variable de type
                while isempty(Paquet{i,end}{2})==1 && C<=52
                    F=1;
                    N=randi([1,13]);
                    while M==1 && isempty(Paquet{i,end}{2})==1 && F<=13
                        F=F+1;
                        C=C+1;
                        Paquet{i,end}{1}='Trefle';
                        Paquet{i,end}{2}=Pioche(N).Trefle;
                        Pioche(N).Trefle=[];
                        %Change de numéro entre chaque loop de while
                        if N==13
                            N=1;
                        else
                            N=N+1;
                        end
                    end
                    while M==2 && isempty(Paquet{i,end}{2})==1 && F<=13
                        C=C+1;
                        F=F+1;
                        Paquet{i,end}{1}='Carreau';
                        Paquet{i,end}{2}=Pioche(N).Carreau;
                        Pioche(N).Carreau=[];
                        %Change de numéro entre chaque loop de while
                        if N==13
                            N=1;
                        else
                            N=N+1;
                        end
                    end
                    while M==3 && isempty(Paquet{i,end}{2})==1 && F<=13
                        F=F+1;
                        C=C+1;
                        Paquet{i,end}{1}='Pique';
                        Paquet{i,end}{2}=Pioche(N).Pique;
                        Pioche(N).Pique=[];
                        %Change de numéro entre chaque loop de while
                        if N==13
                            N=1;
                        else
                            N=N+1;
                        end
                    end
                    while M==4 && isempty(Paquet{i,end}{2})==1 && F<=13
                        F=F+1;
                        C=C+1;
                        Paquet{i,end}{1}='Coeur';
                        Paquet{i,end}{2}=Pioche(N).Coeur;
                        Pioche(N).Coeur=[];
                        %Change de numéro entre chaque loop de while
                        if N==13
                            N=1;
                        else
                            N=N+1;
                        end
                    end
                    %Change de type entre chaque loop de while
                    if M==4
                        M=1;
                    else
                        M=M+1;
                    end
                end
                 %Si pioche vide
                    if isempty(Paquet{i,end}{2})==1
                        fprintf('\nLa pioche est vide!\n');
                        Paquet{i,end}{1}={};
                    else
                        fprintf('\nVous avez pigé une carte.\n');
                    end
                 t=t-1; %Fin tour du joueur
            end %Fin choix
            %Réorganisation des cartes
            for y=1:size(Paquet,2) 
                for x=1:j
                    p=1;
                    while isempty(Paquet{x,y})==1 && y+p<=size(Paquet,2)
                        Paquet{x,y}=Paquet{i,y+p};
                        Paquet{x,y+p}=[];
                        p=p+1;
                    end 
                end
            end
            %Efface cellules vides
            Paquet(:,all(cellfun(@isempty,Paquet),1)) = [];
            Paquet(all(cellfun(@isempty,Paquet),2),:) = [];
        end %Fin tour un joueur     
    end %Fin tour de tous les joueurs
    
    T=T-1; %Moins un tour complet à la partie
end %Fin partie


%Comptage point
A=[1:j];
for x=1:j
    for y=1:size(Paquet,2)
        if strcmpi(Paquet{x,y}{2},'as')==1 || strcmpi(Paquet{x,y}{2},'valet')==1
            Pts(y)=11;
        elseif strcmpi(Paquet{x,y}{2},'2')==1
            Pts(y)=20;
        elseif strcmpi(Paquet{x,y}{2},'8')==1
            Pts(y)=32;
        elseif strcmpi(Paquet{x,y}{2},'roi')==1 || strcmpi(Paquet{x,y}{2},'dame')==1
            Pts(y)=5;
        elseif strcmpi(Paquet{x,y}{2},'3')==1
            Pts(y)=3;
        elseif strcmpi(Paquet{x,y}{2},'4')==1
            Pts(y)=4;
        elseif strcmpi(Paquet{x,y}{2},'5')==1
            Pts(y)=5;
        elseif strcmpi(Paquet{x,y}{2},'6')==1
            Pts(y)=6;
        elseif strcmpi(Paquet{x,y}{2},'7')==1
            Pts(y)=7;
        elseif strcmpi(Paquet{x,y}{2},'9')==1
            Pts(y)=9;
        end
    end
    A(x)=sum(Pts);
end

%Affichage pointage
for x=1:j
    fprintf('\nJoueur %d = %d',x,A(x))
end

jg=find(A==min(A)); %Pointage le plus bas

if size(jg)~=1  %Si égalité
    %Affichage vainqueur
    fprintf('\n\nLe joueur %d gagne la partie. Bravo!',jg(1))
else
    %Affichage vainqueur
    fprintf('\n\nLe joueur %d gagne la partie. Bravo!',jg)
end
fprintf('\n\n*****Fin de la partie*****')