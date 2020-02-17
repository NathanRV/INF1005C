clear all; 
clc;
%********************************************
%*NOM DU FICHIER: Exercice1.m               *
%*DESCRIPTION: Crée un ensemble de cellules *
%*             permettant de rassembler     *
%*             diverses informations sur le *
%*             véhicules!                   *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CRÉATION: 2019/01/30              *
%*MISE À JOUR: Aucune                       *
%********************************************

%Création des cellules 1er véhicule
TrafficC{1,1}='AL12';
TrafficC{1,2}={[18 12 13 14], mean(18+12+13+14)};
TrafficC{1,3}=14.9;

%Création des cellules 2ieme véhicule
TrafficC{2,1}='MA23L';
TrafficC{2,2}={[20 32 10 15 3], mean(20+32+10+15+3)};
TrafficC{2,3}=20.55;

%Création des cellules 3ieme véhicule
TrafficC{3,1}='LA7899';
TrafficC{3,2}={[1 2 5 6 9 25], mean(1+2+5+6+9+25)};
TrafficC{3,3}=30.20;

%Création des cellules 4ieme véhicule
TrafficC{4,1}='HCR9';
TrafficC{4,2}={[25.32 4.14 5 12.1 19], mean(25.32+4.14+5+12.1+19)};
TrafficC{4,3}=9.92;

%Entrée des données du nouveau véhicule
TrafficC{end+1,1}=input('Veuillez entrer le VID du véhicule : ','s');
TrafficC{end,2}={input('Veuillez entrer le vecteur de vitesses enregistré : ')};
TrafficC{end,2}{1,2}=mean(TrafficC{end,2}{1,1});
TrafficC{end,3}=input('Donnez la vitesse instantanée du véhicule : ');

%Ajout de la Vi du nouv. véhicule aux vecteurs vitesse moyenne
TrafficC{1,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{2,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{3,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{4,2}{1,2}(end+1)=TrafficC{end,3};

%Mise à jour vitesse moyenne
TrafficC{1,2}{1,2}=mean(TrafficC{1,2}{1,1});
TrafficC{2,2}{1,2}=mean(TrafficC{2,2}{1,1});
TrafficC{3,2}{1,2}=mean(TrafficC{3,2}{1,1});
TrafficC{4,2}{1,2}=mean(TrafficC{4,2}{1,1});

%Afficher les VID et vitesses moyennes des véhicules
fprintf('Les vitesses moyennes à bord de chaque véhicule sont : \n');
fprintf('\n %s : %.02f', TrafficC{1,1}, TrafficC{1,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{2,1}, TrafficC{2,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{3,1}, TrafficC{3,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{4,1}, TrafficC{4,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{5,1}, TrafficC{5,2}{1,2});

%Mise à vide des 3 dernières lignes de TrafficC
TrafficC([end-2: end],:)=[ ];

