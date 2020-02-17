function[trouve,infos]=chercherEtudiant(fic_bin, etudiant)

%Fonction qui cherche �tudiant dans base de donn�es
%[trouve,infos]=chercherEtudiant(fic_bin, etudiant)
%*********************************************************
%Nom du fichier: chercherEtudiant.m
%Description: exercice 4 du tp5
%Auteur: Nathan Ramsay-Vejlens
%Param�tres: fic_bin,etudiant (fichier bin et cha�ne caract�res)
%Valeurs de retour: trouve,infos(variable bool�enne, ensemble de cellules)
%Date: 27 mars 2019
%Mise � jour : 3 avril 2019
%*********************************************************

%Ouverture fichier
fid1=fopen(fic_bin);
%intialisation variable
N=0;
trouve=0;
infos{1,1}=0;

%v�rif ouverture
if fid1~=-1
    lnom=fread(fid1,[1],'int16');  %premi�re lecture (taille nom)
        
    while ~isempty(lnom)
        nom=(fread(fid1,lnom,'*char'))';    %nom
        mat=(fread(fid1,[1],'int32'))';   %matricule
        lprog=fread(fid1,[1],'int16'); %taille programme
               
        %Diviser nom en pr�nom et nom de famille
        %position de l'espace
        pos=find(isspace(nom));
        prenom=nom(1:pos-1);    %prenom
        nomf=nom(pos+1:end);    %nom        
        
        
         
        %Cherche �tudiant
        if strcmpi(prenom,etudiant) || strcmpi(nomf,etudiant) || strcmpi(mat,etudiant)
            prog=(fread(fid1,lprog,'*char'))';             %programme
            Ntp=fread(fid1,[1],'double');  %note tp
            Nc=fread(fid1,[1],'double');  %note contr�le
            Nf=fread(fid1,[1],'double');  %note final
            N=N+1;
            %entr�e dans ensemble de cellules
            infos{1,N}=nom;     %nom
            infos{2,N}=mat;     %matricule
            infos{3,N}=prog;    %programme
            infos{4,N}=Ntp;     %note tp
            infos{5,N}=Nc;      %note contr�le
            infos{6,N}=Nf;      %note final
        else
            fseek(fid1,lprog,'cof') ;    %sauter infos inutiles (prog)
            fseek(fid1,(3*8),'cof') ;    %sauter infos inutiles (3*double)
        end
            
            
        %lecture suivante
        lnom=fread(fid1,[1],'int16');
    end
end

if N~=0 %si �tudiant(s) trouv�(s)
    trouve=1;
end

%Fermeture fichier et v�rif
verif=fclose(fid1);
if verif~=0
    warning('Le fichier %s n''a pas pu se fermer!',fic_bin)
end
end