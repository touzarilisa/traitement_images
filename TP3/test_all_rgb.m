
I=imread('Lena.jpg');

I=I(300:400,300:400,:);
size(I)
I=all_rgb(I);
figure;
imshow(I);