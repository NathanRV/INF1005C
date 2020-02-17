%**********************************************************************
%*Nom du fichier: AntiVirus.m
%*Description: exercice 2 du TP4H14: nettoie un fichier infecté par un
%                                    virus
%*Auteur: Ziad Aldirany
%*Date: 17 3 2019
%**********************************************************************

function [] = AntiVirus(nomFichierInfecte)
if(nargin==1)
    %initialisations
    VIRUS='YoMan!';
    compteur = 0;
    
    %ouverture du fichier texte infecte en mode lecture
    idFicLecture=fopen (nomFichierInfecte,'rt');
    
    %lecture du fichier infecte
    if idFicLecture~=-1
        %récupération de chaque phrase
        lignes{1} = fgetl(idFicLecture);        
        while ischar(lignes{end})
            lignes{end+1}=fgetl(idFicLecture);
        end
        
        %fermeture du fichier infecte
        fclose(idFicLecture);
    else
        error('erreur ouverture du fichier infecte');
    end
    
    
    %recherche des signatures et suppression dans le texte
    for i = 1:length(lignes)
        indices = strfind(lignes{i},VIRUS);
        compteur = compteur + length(indices);
        for j = 1:length(indices)
            decalage = (j-1)*length(VIRUS);
            lignes{i}(indices(j)-decalage:indices(j)+length(VIRUS)-1-decalage)=[];
        end
    end  
    
    %si le fichier contient des virus alors nettoyer le fichier
    if compteur > 0
        %ouverture du fichier infecte en mode ecriture
        idFicEcriture=fopen (nomFichierInfecte,'wt');
        
        %ecriture du texte nettoyé dans le fichier infecté
        if idFicEcriture~=-1
            for i = 1:length(lignes)-1
                fprintf(idFicEcriture,'%s\n',lignes{i});
            end
            
            %fermeture du fichier infecte
            fclose(idFicEcriture);
            
            fprintf('Fichier nettoyé, virus YoMan! %d fois trouvé et éliminé \n', compteur);
        else
            error('erreur ouverture fichier texte');
        end
    else
        fprintf('Ce fichier n''est pas infecté par le virus YoMan! \n');
        
    end
else
    error('nombre d''arguments incorrect');
end
end