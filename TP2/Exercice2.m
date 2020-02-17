clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice2.m                  *
%*DESCRIPTION: Crée un tableau d'enregistrement*
%*             permettant de rassembler        *
%*             diverses informations sur le    *
%*             véhicules!                      *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CRÉATION: 2019/01/30                 *
%*MISE À JOUR: Aucune                          *
%***********************************************

%Création du tableau d'enregistrement
TrafficE=struct('VID',{'AL12','MA23L','LA7899','HCR9'},...
    'Vitesses', {{[18 12 13 14],mean(18+12+13+14)},...
    {[20 32 10 15 3],mean(20+32+10+15+3)},...
    {[1 2 5 6 9 25],mean(1+2+5+6+9+25)},...
    {[25.32 4.14 5 12.1 19],mean(25.32+4.14+5+12.1+19)}},...
    'Vi',{14.9, 20.55, 30.20, 9.92});

%Entrée des données du nouveau véhicule
TrafficE(5).VID=input('Veuillez entrer le VID du véhicule : ','s');
TrafficE(5).Vitesses{1}=input('Veuillez entrer le vecteur de vitesses enregistré : ');
TrafficE(5).Vitesses{2}=mean(TrafficE(5).Vitesses{1});
TrafficE(5).Vi=input('Donnez la vitesse instantanée du véhicule : ');

%Ajout de la Vi du nouv. véhicule aux vecteurs vitesse
TrafficE(1).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(2).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(3).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(4).Vitesses{1}(end+1)=TrafficE(end).Vi;

%Mise à jour vitesse moyenne
TrafficE(1).Vitesses{2}=mean(TrafficE(1).Vitesses{1});
TrafficE(2).Vitesses{2}=mean(TrafficE(2).Vitesses{1});
TrafficE(3).Vitesses{2}=mean(TrafficE(3).Vitesses{1});
TrafficE(4).Vitesses{2}=mean(TrafficE(4).Vitesses{1});

%Afficher les VID et vitesses moyennes des véhicules
fprintf('Les vitesses moyennes à bord de chaque véhicule sont : \n');
fprintf('\n %s : %.02f', TrafficE(1).VID, TrafficE(1).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(2).VID, TrafficE(2).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(3).VID, TrafficE(3).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(4).VID, TrafficE(4).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(5).VID, TrafficE(5).Vitesses{2});

