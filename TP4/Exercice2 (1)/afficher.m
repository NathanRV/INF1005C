function [] = afficher(imageA, imageB, combinaisonAB)
% Affiche trois images dans une fenêtre
% *****************************************************************
% Nom : afficher.m
% Auteur : Olivier Grenier-Chénier
% Params : Les trois images à afficher.
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