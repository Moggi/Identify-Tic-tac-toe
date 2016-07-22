function [ out ] = pre_proc( I )
%PROC Summary of this function goes here
%   Detailed explanation goes here

original = I;

% To gray
I = rgb2gray(I);
BIN = I;
% imshow(I);

% Binariza
BIN = im2bw(BIN);

% Inverte pra melhor visualizar
BIN = ~BIN;
I = BIN;

background = imerode(I,strel('line',30,90));
% figure, imshow(background);

Z = I - background;

background = imerode(I,strel('line',30,0));
% figure, imshow(background);

Z = Z - background;

BIN = bwareaopen(Z,200);

COLUNA = 2;
LINHA  = 1;
%%% Strel
STREL = 4;
se = strel('disk',STREL);

% % Original
% figure,
% subplot(LINHA,COLUNA,1), imshow(original), title('orig');

bw = imclose(BIN,se);
I = imfill(bw,'holes');
I = bwareaopen(I,40);
% subplot(LINHA,COLUNA,2), imshow(I), title('close');

out = I;
end
