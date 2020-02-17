clear all; clc;
%********************************************
%*NOM DU FICHIER: Exercice4.m               *
%*DESCRIPTION: Génère un identifiant et     *
%*              un mot de passe à partir    *
%*              d'informations fournies par *
%*              l'usager!                   *
%*AUTEURS: Nathan Ramsay-Vejlens            *
%*          Nicolas Malo                    *
%*DATE DE CRÉATION: 2019/01/23              *
%*MISE À JOUR: 2019/01/24                   *
%********************************************

fprintf('***Bienvenue au Centre Sportif***\n');     %Fais apparaitre '***Bienvenue au Centre Sportif***' et change de ligne


Nom=input('Veuillez entrer votre nom de famille : ','s');          %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une chaîne de caractères
Prenom=input('Veuillez entrer votre prénom : ','s');                %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une chaîne de caractères
genre=input('Veuillez entrer votre genre (M ou F) : ','s');         %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une chaîne de caractères
dn=input('Veuillez entrer votre date de naissance (JJMMAAAA) : ','s');  %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une chaîne de caractères
sport=input('Veuillez entrer votre discipline sportive préférée : ','s');   %Fais apparaitre 'Veuillez ... : ' et permet d'entrer une chaîne de caractères
fprintf('\n');                                                      %change de ligne

%Création de l'identifiant
a=upper(Nom(1));                %a correspond à la majuscule du premier caractère de Nom
b=upper(Nom(end));              %b correspond à la majuscule du dernier caractère de Nom
c=lower(Prenom(end-1));         %c correspond à la minuscule de l'avant dernier caractère de Prenom
d=lower(Prenom(end));           %d correspond à la minuscule du dernier caractère de Prenom
e=upper(sport(1));              %e correspond à la majuscule du premier caractère de sport
f=upper(sport(2));              %f correspond à la majuscule du deuxième caractère de sport
j1=dn([1 2]);                   %j1 correspond au premier jusqu'au deuxième élément de dn (le jour de naissance)
j=str2num(j1);                  %j correspond à la valeur numérique de la chaîne de caractères j1
g1=double(genre);               %g1 correspond à la valeur ASCII de genre
g=j+g1-45;                      %g correspond au jour de naissance additionné (+) au genre (valeur ASCII) le tout soustrait(-) de 45. 
h=fix(35+(70-35)*rand(1));      %h correspond à un nombre entier aléatoire entre 35 et 70

%Création du mot de passe
a2=lower(Nom(end));                 %a2 correspond à la minuscule du dernier caractère du nom
b2=upper(Nom(end-1));               %b2 correspond à la majuscule de l'avant dernier caractère du nom
c2=upper(sport(end));               %c2 correspond à la majuscule du dernier caractère du sport préféré
d2=lower(Prenom(1));                %d2 correspond à la minuscule du premier caractère du prénom
e2=upper(Prenom(end));              %e2 correspond à la majuscule du dernier caractère du prénom
ddn=dn([5 6]);                      %ddn correspond 5ième et 6ième éléments de la chaîne de caractères de la date de naissance (millénaire, siècle)
ddn1=str2num(ddn);                  %ddn1 correspond à la valeur numérique de la chaine ddn
f2=double(upper(Nom(2)))-ddn1 ;   %f2 correspond à la soustraction (-) de la valeur ASCII de la 2e lettre du nom (en majuscules) avec 
                                 %le nombre formé par les deux premiers chiffres de l’année de naissance.
ddn2=dn([3 4]);                %ddn2 correspond au 3ième et 4ième éléments de la chaîne de caractères de la date de naissance (mois)
h2=fix(1+(30-1)*rand(1));     %entier aléatoire entre 1 et 30





ddn3=str2num(ddn2);           %ddn3 correspond à la valeur numérique de la chaine ddn2 (mois de naissance)
g2=ddn3+h2;                   %g2 correspond au mois de naissance additionné (+) à un nombre entier aléatoire entre 1 et 30.


fprintf('*** Bonjour %s %s! ***', Prenom, Nom);          %Fais apparaître '***Bonjour (prénom et nom entré)! ***'

fprintf('\n Votre identifiant est : %s%s%s%s%s%s%d%d ', a, b, c, d, e, f, g, h);    %Change de ligne et fais apparaître 'Votre identifiant est : (identifiant)'

fprintf('\n Votre mot de passe est : %s%s%s%s%s%d%02d ', a2, b2, c2, d2, e2, f2, g2);   %Change de ligne et fais apparaître 'Votre mot de passe est : (mot de passe)'

fprintf(' \n *********************************************');             %Change de ligne et fais apparaître plein d'étoile