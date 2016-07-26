function [ out ] = winner( I )
%WINNER Summary of this function goes here
%   Detailed explanation goes here

[x,y] = size(I);

resultado = -1;

for i = 1:x
    k=0;
    for j = 1:y 
       k = k + I(i,j);
    end
    
    if k == 3
       resultado = 1;
       break
    elseif k == 0
       resultado = 0;
       break
    end
end

if resultado == -1
    for j = 1:x
        k=0;
        for i = 1:y 
           k = k + I(i,j);
        end

        if k == 3
           resultado = 1;
           break
        elseif k == 0
           resultado = 0;
           break
        end
    end
end

if resultado == -1
    k = I(1,1) + I(2,2) + I(3,3);
    l = I(3,1) + I(2,2) + I(1,3);
    if k == 3 || l==3
       resultado = 1;
    elseif k == 0 || l==0
       resultado = 0;
    end
end

if resultado == 0
    disp('Jogador O ganhou');
    out='Jogador O ganhou';
    
elseif resultado == 1
    disp('Jogador X ganhou');
    out='Jogador X ganhou';

else
    disp('Jogo inacabado ou Velha');
    out='Jogo inacabado ou Velha';

end

