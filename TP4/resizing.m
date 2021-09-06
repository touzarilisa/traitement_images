I=imread('Resize.png');
[a,b,c]=size(I);
figure,imshow(I),title('original image');

J=I(1:2:end,1:2:end,1:end);
[a,b,c]=size(J);
figure,imshow(J),title('resized image');