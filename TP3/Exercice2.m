clear all; 
clc;
%***********************************************
%*NOM DU FICHIER: Exercice2.m                  *
%*DESCRIPTION: Suite de Fibonacci              *
%*                                             *
%*                                             *
%*                                             *
%*AUTEURS: Nathan Ramsay-Vejlens               *
%*          Nicolas Malo                       *
%*DATE DE CRÉATION: 2019/02/13                 *
%*MISE À JOUR: 2019/02/23                      *
%***********************************************

%Début du loop
w='OUI';
while strcmpi(w,'OUI')==1
    
    %Entrée de variable
    n=input('Entrez le nombre n (supérieur à 3) : ','s');

    %Vérification variable
    while any(isletter(n))==1 || str2num(n)<=3 
        n=input('Entrez le nombre n (supérieur à 3) : ','s');
    end
    n=str2num(n);
    
    %Démarrage chrono
    tic;
    
    %Calcul de la suite
    f(1) = 0 ;
    f(2) = 1 ;
    s(1) = 0 ;
    s(2) = 1 ;
    s(3:end)=[];
    for k = (3:n)
        f(k) = f(k-2)+f(k-1); 
        s(end+1)=f(k);
    end
    
    %Fin chrono
    t=toc;
    
    %Affichage
    fprintf('Suite de Fibonacci : ');
    fprintf('%d ',s);
    
    %Affichage/calcul nombre de termes pairs
    Res = rem(f,2) == 0 ;
    Val = f(Res);
    p = numel(f(Res));  
    fprintf('\nLe nombre de termes pairs : %d', p);

    %Affichage/calcul nombre de termes impairs 
    Res = rem(f,2) ~= 0 ;
    Val = f(Res);
    ip = numel(Val);
    fprintf('\nLe nombre de termes impairs : %d', ip);

    %Calcul nombre premier
    tp=0;
    for y=4:n
        d=2; c=0;
        while d<=floor(sqrt(s(y)))
            if rem(s(y),d)==0
                c=1;
                d=s(y);
            end
            d=d+1;
        end
        if c==0
            tp=tp+1;
        end
    end
           
    %Affichage nombre premier
    fprintf('\nLe nombre de termes premiers : %d', tp);

    %Affichage du temps de calcul
    fprintf('\nTemps de calcul : %.4f secondes', t);

    %Continuité
    w=input('\n\nVoulez-vous continuer ?: ','s');
    
    %Réponse valide ou pas
    while strcmpi(w,'oui')==0 && strcmpi(w,'non')==0
        w=input('Voulez-vous continuer ?: ','s');
    end
end
fprintf('Au revoir!')

