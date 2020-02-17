function [reussi] = conversion(fichier_bin)
%************************************************************************
% conversion.m
% Solution exercice 4, TP5 de INF1005A - Programmation Procédurale MATLAB
% Auteur: François Léonard
% Creation: 3-22-2019
%************************************************************************

%Ouverture des fichiers
fid=fopen('moodle_db.txt', 'rt');
bin_id = fopen(fichier_bin, 'w');
reussi = false;

%Vérification de l'ouverture des fichiers
if fid ~= -1 && bin_id ~= -1
    
    %Lecture Titre du livre
    db_nom = fgetl(fid);
    
    %Boucle pour le stockage des informations
    while ischar(db_nom)
        fwrite(bin_id,length(db_nom), 'int16'); %Taille du nom
        fwrite(bin_id, db_nom, 'char'); %Nom
        db_matr = fgetl(fid); %Matricule
        fwrite(bin_id, str2num(db_matr), 'uint32');
        db_prog = fgetl(fid); %Programme
        fwrite(bin_id, length(db_prog), 'int16');
        fwrite(bin_id, db_prog, 'char');
        db_note_tp = fgetl(fid); %Note TP
        fwrite(bin_id, str2num(db_note_tp), 'double');
        db_note_ctrl = fgetl(fid); %Note Controle
        fwrite(bin_id, str2num(db_note_ctrl), 'double');
        db_note_final = fgetl(fid); %Note Final
        fwrite(bin_id, str2num(db_note_final), 'double');
        
        
        db_nom=fgetl(fid);
        
    end
    
    fclose(fid);
    fclose(bin_id);
    reussi = true;
else
    error('Problème lors de l''ouverture des fichiers');
end
end
