
C1=imread('rsc/jogo1.jpg');
C2=imread('rsc/jogo2.jpg');
C3=imread('rsc/jogo3.jpg');
C4=imread('rsc/jogo4.jpg');
C5=imread('rsc/jogo5.jpg');
C6=imread('rsc/jogo6.jpg');
C7=imread('rsc/jogo7.jpg');

I1=pre_proc(C1);
I2=pre_proc(C2);
I3=pre_proc(C3);
I4=pre_proc(C4);
I5=pre_proc(C5);
I6=pre_proc(C6);
I7=pre_proc(C7);

I1=seg(I1);
I2=seg(I2);
I3=seg(I3);
I4=seg(I4);
I5=seg(I5);
I6=seg(I6);
I7=seg(I7);

I1=classify(I1);
I2=classify(I2);
I3=classify(I3);
I4=classify(I4);
I5=classify(I5);
I6=classify(I6);
I7=classify(I7);

I1=winner(I1);
I2=winner(I2);
I3=winner(I3);
I4=winner(I4);
I5=winner(I5);
I6=winner(I6);
I7=winner(I7);

figure,
subplot(2,4,1), imshow(C1), title(I1);
subplot(2,4,2), imshow(C2), title(I2);
subplot(2,4,3), imshow(C3), title(I3);
subplot(2,4,4), imshow(C4), title(I4);
subplot(2,4,5), imshow(C5), title(I5);
subplot(2,4,6), imshow(C6), title(I6);
subplot(2,4,7), imshow(C7), title(I7);
