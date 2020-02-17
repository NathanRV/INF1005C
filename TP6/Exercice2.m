clear all; clf; close all; clc;
%***********************************************
%*NOM DU FICHIER: Exercice2.m                  *
%*DESCRIPTION: Graphes de la suite de          *
%*                    Fibonacci                *
%*                                             *
%*AUTEUR: Nathan Ramsay-Vejlens                *
%*DATE DE CR�ATION: 2019/04/09                 *
%*MISE � JOUR:                                 *
%***********************************************

%a)
%D�finition suite de fibonacci
F(1,1)=0;
F(2,1)=1;
n=12;
if n>=3
    for i=3:n
    F(i,1)=F(i-1,1)+F(i-2,1);
    end
end

%Cr�ation de la fen�tre avec num�ro de la figure
figure(1);
%Divise la fen�tre en 4 cases: graphe F dans la case 1
subplot(2,2,1); 
%Tra�age du graphe F
plot(F,'ko-','markerface','r','markeredge','r', 'linewidth',1);
%Titre du graphe F
title('S�rie de Fibonacci');
%Limites axes
axis([1 12 0 100]);
%Titre des axes x et y
xlabel('n');
ylabel('Nombre de Fibonacci');

%b)
%D�finition suite du nombre d'or (10 premiers)
n=10;
if n>=1
    for i=1:n
    k(i,1)=F(i+2,1)/F(i+1,1);
    %Nombre d'or
    Or(i,1)=(sqrt(5)+1)/2;
    end
end

%Graphe k dans la case 2
subplot(2,2,2);
%Plusieurs graphes
hold on
%Le nombre d'or
plot(Or,'-r','linewidth',2);
%Marqueures bleu croix �paisseur 2
plot(k,'x','markerface','b','linewidth',2);
%fin plusieurs graphes
hold off
%Titre
title('Nombre d''or');
%Limite axe
axis([1 10 0 2.1]);
%Nom axes
xlabel('n');
ylabel('Ratio');
%L�gende
legend('Ratio','Nombre d''or','location','SouthEast');

%c)
%D�finition 10 premiers termes erreur
for i=1:10
    erreur(i,1)=log10(abs(k(i,1)-Or(i,1)));
end

%Graphe erreur dans la case 3
subplot(2,2,3); 
%Tra�age du graphe f3
plot(erreur,'gd','markerface','g');
%Titre du graphe f1
title('Convergence de k(n)');
%Titre des axes x et y
xlabel('n');
ylabel('Log(erreur)');
%Limite axe
axis([1 10 -4 0]);
%Quadrillage
grid on

%d)
%D�finition spirale
NbOr=Or(1,1);
i=1;
for t=[0: 0.001: 6*pi]
    x(i)=NbOr^(2*t/pi)*cos(t);
    y(i)=NbOr^(2*t/pi)*sin(t);
    i=i+1;
end

%Graphe  dans la case 4
subplot(2,2,4); 
%Tra�age du graphe f3
plot(x,y,'r','linewidth',2);
axis equal
%Titre du graphe f1
title('Spirale d''or');
%Titre des axes x et y
xlabel('x');
ylabel('y');
%Limite axe
axis([-200 400 -220 100]);
%Quadrillage
grid on

