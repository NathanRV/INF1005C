function [] = afficher(imageA, imageB, combinaisonAB)
% Affiche trois images dans une fen�tre
% *****************************************************************
% Nom : afficher.m
% Auteur : Olivier Grenier-Ch�nier
% Params : Les trois images � afficher.
% Date : 2019-03-09
% *****************************************************************  
    subplot(2,2,1, 'replace');
    imshow(imageA, []);
    title('imageA');

    subplot(2,2,2, 'replace');
    imshow(imageB, []);
    title('imageB');
    
    subplot(2,2,[3 4], 'replace');
    imshow(combinaisonAB, []);
    title('combinaisonAB');

end