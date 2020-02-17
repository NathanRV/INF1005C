clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice2.m                  *
%*DESCRIPTION: Cr�e un tableau d'enregistrement*
%*             permettant de rassembler        *
%*             diverses informations sur le    *
%*             v�hicules!                      *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CR�ATION: 2019/01/30                 *
%*MISE � JOUR: Aucune                          *
%***********************************************

%Cr�ation du tableau d'enregistrement
TrafficE=struct('VID',{'AL12','MA23L','LA7899','HCR9'},...
    'Vitesses', {{[18 12 13 14],mean(18+12+13+14)},...
    {[20 32 10 15 3],mean(20+32+10+15+3)},...
    {[1 2 5 6 9 25],mean(1+2+5+6+9+25)},...
    {[25.32 4.14 5 12.1 19],mean(25.32+4.14+5+12.1+19)}},...
    'Vi',{14.9, 20.55, 30.20, 9.92});

%Entr�e des donn�es du nouveau v�hicule
TrafficE(5).VID=input('Veuillez entrer le VID du v�hicule : ','s');
TrafficE(5).Vitesses{1}=input('Veuillez entrer le vecteur de vitesses enregistr� : ');
TrafficE(5).Vitesses{2}=mean(TrafficE(5).Vitesses{1});
TrafficE(5).Vi=input('Donnez la vitesse instantan�e du v�hicule : ');

%Ajout de la Vi du nouv. v�hicule aux vecteurs vitesse
TrafficE(1).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(2).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(3).Vitesses{1}(end+1)=TrafficE(end).Vi;
TrafficE(4).Vitesses{1}(end+1)=TrafficE(end).Vi;

%Mise � jour vitesse moyenne
TrafficE(1).Vitesses{2}=mean(TrafficE(1).Vitesses{1});
TrafficE(2).Vitesses{2}=mean(TrafficE(2).Vitesses{1});
TrafficE(3).Vitesses{2}=mean(TrafficE(3).Vitesses{1});
TrafficE(4).Vitesses{2}=mean(TrafficE(4).Vitesses{1});

%Afficher les VID et vitesses moyennes des v�hicules
fprintf('Les vitesses moyennes � bord de chaque v�hicule sont : \n');
fprintf('\n %s : %.02f', TrafficE(1).VID, TrafficE(1).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(2).VID, TrafficE(2).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(3).VID, TrafficE(3).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(4).VID, TrafficE(4).Vitesses{2});
fprintf('\n %s : %.02f', TrafficE(5).VID, TrafficE(5).Vitesses{2});

