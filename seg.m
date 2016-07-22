function [ out ] = seg( I )

[x,y] = size(I);

xProp = y/3;
yProp = y/3;

x = xProp * ones(1,3);
y = yProp * ones(1,3);

C = mat2cell(I, x, y);

out = C;
end

