%% Exemple de menu

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nom du fichier   : Menu
% Auteur           : Marieme Diallo
% Date de création : 01/10/2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, 
clc
% Ecrivez un programme qui simule une calculatrice. Le programme demande
% deux nombres et demande une opération en affichant le menu suivant :
% 
% 1. Addition
% 2. Soustraction
% 3. Multiplication
% 4. Division
% 5. Quitter
% 
% L’utilisateur doit entrer l'index d'une opération et le programme retourne
% le résultat correspondant si c'est possible.
% Dans le cas d'une division le second nombre doit être différent de zéro.
% Si l'utilisateur entre 5 le programme se termine en affichant un message
% d'adieu.
% Si l'utilisateur rentre un index qui n'existe pas dans le menu, le
% programme affiche le menu de nouveau.


% %% Version 1 avec exemples de calculs de temps
tic;
t1=clock;
t2=cputime;
continuer = 1;
while continuer  % ou while continuer==1
    resultat = []; % initialiser le resultat 
    
    % affichage du menu
    disp('1. Addition')
    disp('2. Soustraction')
    disp('3. Multiplication')
    disp('4. Division')
    disp('5. Quitter')
    choix = input('Faite le choix d''operation en entrant l''index correspondant: ');
    
    % Cas de choix invalides
    if (choix <=0) || (choix > 5)
        disp('Attention choix invalide')
    else
        if(choix ~= 5)  % si l'utilisateur ne veut pas quitter
            nombre1 = input('Entrez le premier nombre: ');
            nombre2 = input('Entrez le second nombre: ');
            % Effectuer l'operation choisie
            switch choix
                case 1
                    resultat = nombre1 + nombre2;
                case 2
                    resultat = nombre1 - nombre2;
                case 3
                    resultat = nombre1 * nombre2;
                case 4
                    if nombre2 ~= 0 % pour éviter une division nulle
                        resultat = nombre1/nombre2;
                    else
                        disp('la division est impossible, le second nombre est 0')
                    end
            end
        else
            continuer = ~continuer; % ou continuer = 0;
        end
    end
    % si un resultat a pu être calculé, on l'affiche
    if ~isempty(resultat)
        fprintf('Le resultat est %0.3f\n', resultat)
    end
end
disp('Bonne journee')
temps1=toc;
temps2=etime(clock,t1);
temps3=cputime - t2;


%% Version 2

% affichage du menu
menu = sprintf('1. Addition\n2. Soustraction\n3. Multiplication\n4. Division\n5. Quitter\nFaite le choix d''operation en entrant l''index correspondant: ');
continuer = 1;

while continuer % ou while continuer==1
    disp(menu);
    choix = input('Votre choix?: ');
    resultat = []; % initialiser le resultat 
    
    if(choix >=1) && (choix <= 4) % Car il est inutile de faire des input si l'utilisateur veut quitter en tapant 5
        nombre1 = input('Entrez le premier nombre: ');
        nombre2 = input('Entrez le second nombre: ');
    end
    % Effectuer l'operation choisie
    switch choix
        case 1
            resultat = nombre1 + nombre2;
        case 2
            resultat = nombre1 - nombre2;
        case 3
            resultat = nombre1 * nombre2;
        case 4
            if nombre2 ~= 0
                resultat = nombre1/nombre2;
            else
                disp('La division est impossible, le second nombre est 0')
            end
        case 5
            continuer = 0; % ou continuer = ~continuer;
            disp('Bonne journee!')
        otherwise
            disp('Choix invalide, faites un autre choix svp')
    end
    
    % si un resultat existe, on l'affiche
    if ~isempty(resultat)
        fprintf('Le resultat est %0.3f\n', resultat)
    end
end

