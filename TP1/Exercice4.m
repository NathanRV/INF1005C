clear all; clc;
%********************************************
%*NOM DU FICHIER: Exercice4.m               *
%*DESCRIPTION: G�n�re un identifiant et     *
%*              un mot de passe � partir    *
%*              d'informations fournies par *
%*              l'usager!                   *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CR�ATION: 2019/01/23              *
%*MISE � JOUR: 2019/01/24                   *
%********************************************

fprintf('***Bienvenue au Centre Sportif***\n');     %Fais apparaitre '***Bienvenue au Centre Sportif***' et change de ligne


Nom=input('Veuillez entrer votre nom de famille : ','s');          %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une cha�ne de caract�res
Prenom=input('Veuillez entrer votre pr�nom : ','s');                %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une cha�ne de caract�res
genre=input('Veuillez entrer votre genre (M ou F) : ','s');         %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une cha�ne de caract�res
dn=input('Veuillez entrer votre date de naissance (JJMMAAAA) : ','s');  %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une cha�ne de caract�res
sport=input('Veuillez entrer votre discipline sportive pr�f�r�e : ','s');   %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une cha�ne de caract�res
fprintf('\n');                                                      %change de ligne

%Cr�ation de l'identifiant
a=upper(Nom(1));                %a correspond � la majuscule du premier caract�re de Nom
b=upper(Nom(end));              %b correspond � la majuscule du dernier caract�re de Nom
c=lower(Prenom(end-1));         %c correspond � la minuscule de l'avant dernier caract�re de Prenom
d=lower(Prenom(end));           %d correspond � la minuscule du dernier caract�re de Prenom
e=upper(sport(1));              %e correspond � la majuscule du premier caract�re de sport
f=upper(sport(2));              %f correspond � la majuscule du deuxi�me caract�re de sport
j1=dn([1 2]);                   %j1 correspond au premier jusqu'au deuxi�me �l�ment de dn (le jour de naissance)
j=str2num(j1);                  %j correspond � la valeur num�rique de la cha�ne de caract�res j1
g1=double(genre);               %g1 correspond � la valeur ASCII de genre
g=j+g1-45;                      %g correspond au jour de naissance additionn� (+) au genre (valeur ASCII) le tout soustrait(-) de 45. 
h=fix(35+(70-35)*rand(1));      %h correspond � un nombre entier al�atoire entre 35 et 70

%Cr�ation du mot de passe
a2=lower(Nom(end));                 %a2 correspond � la minuscule du dernier caract�re du nom
b2=upper(Nom(end-1));               %b2 correspond � la majuscule de l'avant dernier caract�re du nom
c2=upper(sport(end));               %c2 correspond � la majuscule du dernier caract�re du sport pr�f�r�
d2=lower(Prenom(1));                %d2 correspond � la minuscule du premier caract�re du pr�nom
e2=upper(Prenom(end));              %e2 correspond � la majuscule du dernier caract�re du pr�nom
ddn=dn([5 6]);                      %ddn correspond 5i�me et 6i�me �l�ments de la cha�ne de caract�res de la date de naissance (mill�naire, si�cle)
ddn1=str2num(ddn);                  %ddn1 correspond � la valeur num�rique de la chaine ddn
f2=double(upper(Nom(2)))-ddn1 ;   %f2 correspond � la soustraction (-) de la valeur ASCII de la 2e lettre du nom (en majuscules) avec 
                                 %le nombre form� par les deux premiers chiffres de l�ann�e de naissance.
ddn2=dn([3 4]);                %ddn2 correspond au 3i�me et 4i�me �l�ments de la cha�ne de caract�res de la date de naissance (mois)
h2=fix(1+(30-1)*rand(1));     %entier al�atoire entre 1 et 30





ddn3=str2num(ddn2);           %ddn3 correspond � la valeur num�rique de la chaine ddn2 (mois de naissance)
g2=ddn3+h2;                   %g2 correspond au mois de naissance additionn� (+) � un nombre entier al�atoire entre 1 et 30.


fprintf('*** Bonjour %s %s! ***', Prenom, Nom);          %Fais appara�tre '***Bonjour (pr�nom et nom entr�)! ***'

fprintf('\n Votre identifiant est : %s%s%s%s%s%s%d%d ', a, b, c, d, e, f, g, h);    %Change de ligne et fais appara�tre 'Votre identifiant est : (identifiant)'

fprintf('\n Votre mot de passe est : %s%s%s%s%s%d%02d ', a2, b2, c2, d2, e2, f2, g2);   %Change de ligne et fais appara�tre 'Votre mot de passe est : (mot de passe)'

fprintf(' \n *********************************************');             %Change de ligne et fais appara�tre plein d'�toile