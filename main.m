
I1=imread('rsc/jogo1.jpg');
I2=imread('rsc/jogo2.jpg');
I3=imread('rsc/jogo3.jpg');
I4=imread('rsc/jogo4.jpg');
I5=imread('rsc/jogo5.jpg');
I6=imread('rsc/jogo6.jpg');
I7=imread('rsc/jogo7.jpg');

I1=pre_proc(I1);
I2=pre_proc(I2);
I3=pre_proc(I3);
I4=pre_proc(I4);
I5=pre_proc(I5);
I6=pre_proc(I6);
I7=pre_proc(I7);

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

winner(I1);
winner(I2);
winner(I3);
winner(I4);
winner(I5);
winner(I6);
winner(I7);



