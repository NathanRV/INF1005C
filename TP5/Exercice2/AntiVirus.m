function[]=AntiVirus(nomFichier)

%Fonction qui cherche et efface ''le virus'' YoMan!
%AntiVirus(nomFichier)
%*********************************************************
%Nom du fichier: AntiVirus.m
%Description: exercice 2 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: nomfichier (cha�ne de caract�res)
%Valeurs de retour: Aucune
%Date: 26 mars 2019
%*********************************************************

%Ouverture fichier
fd1=fopen(nomFichier);

%Virus � �liminer et initialisation variable
virus='YoMan!';
NbFois=0;
pos{1,1}=[];
N=1;
cell{1,1}=[];

%Premi�re lecture
cell{N,1}=fgetl(fd1);

%Lecture du fichier ligne par ligne
while ~ischar(cell{N,1})==0
    N=N+1;
    cell{N,1}=fgetl(fd1);
end

%Efface derni�re ligne(-1)
cell(N)=[];

%Fermeture fichier et v�rification
verification=fclose(fd1);
if verification==-1
    fprintf('Le fichier ne s''est pas ferm� correctement')
end

%Recherche virus
for x=1:size(cell,1)
    p=1;
    for i=1:(length(cell{x,1})-length(virus))
        if strcmp(cell{x}(i:i+length(virus)-1),virus)
            pos{x,p}=i-((p-1)*length(virus));
            p=p+1;
            NbFois=NbFois+1;
        end
    end
end

%�limination virus
if NbFois>0
    for x=1:size(cell,1)    %pour ligne
        for y=1:size(pos,2) %pour nombre d'infection par ligne
            for i=1:length(virus)    %pour longueur du virus
                cell{x,1}(pos{x,y})=[];
            end
        end
    end
end
    
%Ouverture fichier pour �criture
fd1=fopen(nomFichier,'wt');

%�criture
for i=1:size(cell,1)-1
    fprintf(fd1,'%s\n',cell{i,1});
end

%Derni�re �criture(pas de nouvelle ligne)
fprintf(fd1,'%s',cell{end,1});

%R�ussite ou non
if NbFois==0
    fprintf('Ce fichier n''est pas infect� par le virus %s',virus)
elseif NbFois~=0
    fprintf('Fichier nettoy�! Le virus %s a �t� trouv� %d fois et �limin�.',virus,NbFois)
end

%Fermeture fichier et v�rification
verification=fclose(fd1);
if verification==-1
    fprintf('Le fichier ne s''est pas ferm� correctement')
end
end