function[reussi]=conversion(fichier_bin)

%Fonction qui convertit fichier moodle_db.txt en fichier bin
%[reussi]=conversion(fichier_bin)
%*********************************************************
%Nom du fichier: conversion.m
%Description: exercice 4 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: fichier_bin (fichier � cr�er avec extension)
%Valeurs de retour: reussi(valeur num�rique)
%Date: 27 mars 2019
%Mise � jour : 3 avril 2019
%*********************************************************

%Ouverture des fichiers
fid1=fopen('moodle_db.txt');
fid2=fopen(fichier_bin,'w');

%V�rification ouverture
if fid1==-1
    warning('Le fichier moodle_db.txt n''a pas �t� ouvert!')
elseif fid2==-1
    warning('Le fichier %s n''a pas �t� ouvert!',fichier_bin)
elseif fid1~=-1 && fid2~=-1
    %Premi�re lecture
    nom=fgetl(fid1);

    %Test fin de fichier
    while nom~=-1
        %Lecture des infos
        lnom=length(nom);   %taille nom
        mat=fgetl(fid1);    %matricule
        prog=fgetl(fid1);   %programme d'�tude
        lprog=length(prog); %taille nom programme
        Ntp=fgetl(fid1);    %note tp
        Nc=fgetl(fid1);     %note contr�le
        Nf=fgetl(fid1);     %note final
        
        %Conversion cha�ne en num�ro
        mat=str2num(mat);
        Ntp=str2num(Ntp);
        Nc=str2num(Nc);
        Nf=str2num(Nf);
        
        %�criture
        fwrite(fid2,lnom,'int16');  %taille nom
        fwrite(fid2,nom,'char');    %nom
        fwrite(fid2,mat,'int32');   %matricule
        fwrite(fid2,lprog,'int16'); %taille programme
        fwrite(fid2,prog,'char');   %programme
        fwrite(fid2,Ntp,'double');  %note tp
        fwrite(fid2,Nc,'double');   %note contr�le
        fwrite(fid2,Nf,'double');   %note final
        
        %R�ussite
        reussi=1;
        
        %Prochain �tudiant
        nom=fgetl(fid1);
    end
end
    
%Fermeture fichiers et v�rif
verif=fclose(fid1);
verif2=fclose(fid2);
if verif~=0
    warning('Le fichier moodle_db.txt n''a pas pu se fermer!')
elseif verif2~=0
    warning('Le fichier %s n''a pas pu se fermer!', fichier_bin)
end
end