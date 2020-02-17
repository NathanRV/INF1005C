% Calcule l'empreinte SHA-1 d'une chaine de caractères en utilisant les librairies système de confiance. Systèmes compatibles : Windows & Systèmes embarquant Java Platform SE.
% >> SHA-1 IS NO LONGER CONSIDERED A CRYPTOGRAPHICALLY SECURE HASH FUNCTION
% IN:
%   string: 1-by-N MATLAB string
%
% OUT:
%   hash: SHA-1 digest of string, 1-by-40 hex string

%% INF1005A - Programmation Procédurale MATLAB
%  TP4 - Fonctions
%
%  Auteur :
%  HAOUAS, Mohammed Najib
%
%  Date de modification le 04 octobre 2017

%%
function [hash] = sha1(string)

if nargin ~= 1
    error('Argument count mismatch')
end

if ~ischar(string) || size(string,1) ~= 1
    error('Argument type mismatch')
end

if ispc() % This code uses .NET which is only available on PC
    % Using SHA-1 in .NET managed libraries, instantiation
    sha1Instance = System.Security.Cryptography.SHA1Managed;
    
    % Transforming string to unsigned 8-bit int array,
    % computing hash (SHA-1 is 160 bits long),
    % then going back to 8-bit unsigned int 1-by-20 array from binary data.
    hash = uint8(sha1Instance.ComputeHash(uint8(string)));
    
    % Transforming decimal data to hexadecimal string array
    hash = dec2hex(hash);
    
    % Reshaping string array
    hash = hash';
    hash = hash(1:end);
    
else % This code runs on a machine with Java Platform installed on it
    % Using SHA-1 in Java Platform libraries, instantiation
    sha1Instance = java.security.MessageDigest.getInstance('SHA1');
    
    % Transforming string to unsigned 8-bit int array,
    % computing hash (SHA-1 is 160 bits long),
    % then going back to 8-bit unsigned int 1-by-20 array from int8 type.
    hash = typecast(sha1Instance.digest(uint8(string)),'uint8');
    
    % Transforming decimal data to hexadecimal string array
    hash = dec2hex(hash);
    
    % Reshaping string array
    hash = hash';
    hash = hash(1:end);
end