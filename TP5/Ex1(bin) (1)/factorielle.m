function[]=factorielle(nomFichier)

%Fonction qui calcule la factorielle des chiffres 1 � 170
%[]=factorielle(nomFichier)
%*********************************************************
%Nom du fichier: factorielle.m
%Description: exercice 1 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: nomfichier (cha�ne de caract�res)
%Valeurs de retour: (valeur num�rique)
%Date: 26 mars 2019
%*********************************************************

%Ouverture et �criture fichier
fid1=fopen(nomFichier, 'w');

%V�rification de l'ouverture
if fid1~=-1
    %pour les chiffres 1 � 170, chiffre et factoriel
    for i=1:170
        %�criture dans fichier
        fwrite(fid1, i,'double');
        %�criture dans fichier
        fwrite(fid1, factorial(i),'double');
    end
end

%fermeture fichier
verification=fclose(fid1);

%v�rification fermeture
if verification==-1
    warning('Le fichier ne s''est pas ferm� correctement!');
end
end