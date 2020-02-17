function [trouve,infos] = chercherEtudiant(fichier_bin,mot)
%************************************************************************
% chercherEtudiant.m
% Solution exercice 4, TP5 de INF1005A - Programmation Procédurale MATLAB
% Auteur: François Léonard
% Creation: 3-22-2019
%************************************************************************

%Ouverture du fichier
bin_id = fopen(fichier_bin, 'r');

%Vérification de l'ouverture des fichiers
if  bin_id ~= -1
    
    trouve = 0;
    infos = {};
    
    
    taille_nom = fread(bin_id,1,'int16');
    while taille_nom ~= -1
        
        db_nom = fread(bin_id,taille_nom,'*char')';
        db_mat = fread(bin_id, 1, 'uint32');
        
        
        %if contains(db_nom,mot,'IgnoreCase',true) || contains(db_mat,mot,'IgnoreCase',true)
        if ~isempty( strfind(lower(db_nom),lower(mot))) || ~isempty(strfind(num2str(db_mat),mot))
            taille_prog = fread(bin_id,1,'int16');
            db_prog = fread(bin_id, taille_prog,'*char')';
            db_note_tp = fread(bin_id,1,'double');
            db_note_ctrl = fread(bin_id,1,'double');
            db_note_final = fread(bin_id,1,'double');
            
            
            infos = [infos; {db_nom, db_mat, db_prog, db_note_tp, db_note_ctrl, db_note_final}];
            trouve = 1;
        else
            taille_prog = fread(bin_id,1,'int16');
            fseek(bin_id,taille_prog+8*3,'cof'); % skip information
        end
        
        taille_nom = fread(bin_id,1,'int16');
    end
    
    
    fclose(bin_id);
else
    
    error ('Problème lors de l''ouverture du fichier');
end

end
