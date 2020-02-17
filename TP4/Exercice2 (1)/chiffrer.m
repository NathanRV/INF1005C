function[imageA, imageB]=chiffrer(pixel)
%Fonction qui chiffre une image
%[imageA, imageB]=chiffrer(pixel)
%***************************************************
%Nom du fichier: chiffrer.m
%Description: exercice 2 du tp4
%Auteur: Nathan Ramsay-Vejlens
%Paramètres: pixel (matrice)
%Valeurs de retour: imageA, imageB (matrices)
%Date: 24 mars 2019
%***************************************************

%Initialisation matrices
motifA=[];
motifB=[];
imageA(2*size(pixel,1),2*size(pixel,2))=0;
imageB(2*size(pixel,1),2*size(pixel,2))=0;

%Pour les lignes
    for x=1:size(pixel,1)
        %Pour les colonnes
        for y=1:size(pixel,2)
            al=randi(2); %1 chance sur 2 (aléatoire)
            if al==1    %premier modèle
                if pixel(x,y)==0 %noir
                    motifA=[1 0;0 1];
                    motifB=[0 1;1 0];
                elseif pixel(x,y)==1 %blanc
                    motifA=[1 0;0 1];
                    motifB=[1 0;0 1];
                end
            elseif al==2    %deuxième modèle
                if pixel(x,y)==0 %noir
                    motifA=[0 1;1 0];
                    motifB=[1 0;0 1];
                elseif pixel(x,y)==1 %blanc
                    motifA=[0 1;1 0];
                    motifB=[0 1;1 0];
                end 
            end
            
            %concaténation des différents motifs
            imageA([2*x 2*x+1],[2*y 2*y+1])=motifA; 
            imageB([2*x 2*x+1],[2*y 2*y+1])=motifB;
        end
    end
end