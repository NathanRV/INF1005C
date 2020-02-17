clear all; 
clc;
%********************************************
%*NOM DU FICHIER: Exercice1.m               *
%*DESCRIPTION: Cr�e un ensemble de cellules *
%*             permettant de rassembler     *
%*             diverses informations sur le *
%*             v�hicules!                   *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CR�ATION: 2019/01/30              *
%*MISE � JOUR: Aucune                       *
%********************************************

%Cr�ation des cellules 1er v�hicule
TrafficC{1,1}='AL12';
TrafficC{1,2}={[18 12 13 14], mean(18+12+13+14)};
TrafficC{1,3}=14.9;

%Cr�ation des cellules 2ieme v�hicule
TrafficC{2,1}='MA23L';
TrafficC{2,2}={[20 32 10 15 3], mean(20+32+10+15+3)};
TrafficC{2,3}=20.55;

%Cr�ation des cellules 3ieme v�hicule
TrafficC{3,1}='LA7899';
TrafficC{3,2}={[1 2 5 6 9 25], mean(1+2+5+6+9+25)};
TrafficC{3,3}=30.20;

%Cr�ation des cellules 4ieme v�hicule
TrafficC{4,1}='HCR9';
TrafficC{4,2}={[25.32 4.14 5 12.1 19], mean(25.32+4.14+5+12.1+19)};
TrafficC{4,3}=9.92;

%Entr�e des donn�es du nouveau v�hicule
TrafficC{end+1,1}=input('Veuillez entrer le VID du v�hicule : ','s');
TrafficC{end,2}={input('Veuillez entrer le vecteur de vitesses enregistr� : ')};
TrafficC{end,2}{1,2}=mean(TrafficC{end,2}{1,1});
TrafficC{end,3}=input('Donnez la vitesse instantan�e du v�hicule : ');

%Ajout de la Vi du nouv. v�hicule aux vecteurs vitesse moyenne
TrafficC{1,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{2,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{3,2}{1,2}(end+1)=TrafficC{end,3};
TrafficC{4,2}{1,2}(end+1)=TrafficC{end,3};

%Mise � jour vitesse moyenne
TrafficC{1,2}{1,2}=mean(TrafficC{1,2}{1,1});
TrafficC{2,2}{1,2}=mean(TrafficC{2,2}{1,1});
TrafficC{3,2}{1,2}=mean(TrafficC{3,2}{1,1});
TrafficC{4,2}{1,2}=mean(TrafficC{4,2}{1,1});

%Afficher les VID et vitesses moyennes des v�hicules
fprintf('Les vitesses moyennes � bord de chaque v�hicule sont : \n');
fprintf('\n %s : %.02f', TrafficC{1,1}, TrafficC{1,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{2,1}, TrafficC{2,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{3,1}, TrafficC{3,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{4,1}, TrafficC{4,2}{1,2});
fprintf('\n %s : %.02f', TrafficC{5,1}, TrafficC{5,2}{1,2});

%Mise � vide des 3 derni�res lignes de TrafficC
TrafficC([end-2: end],:)=[ ];

