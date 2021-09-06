% egalisation d'histogramme
I=f1('aquitain.tif');
figure;
imshow(I);

% smoothing
I=smoothing('Lena.jpg');
figure;
imshow(I);

% accentuation
I=accentuation('Lena.jpg');
figure;
imshow(I);

% gradient
I=gradient('Lena.jpg');
figure;
imshow(I);

% ajout de bruit
I=bruit('Lena.jpg');
figure;
imshow(I);

% median filter
% premier filtrage
I=med(I);
figure;
imshow(I);

% deuxieme filtrage
I=med(I);
figure;
imshow(I);

% periodical noise
I= clean_periodic_clown('clown.tif');
figure;
imshow(I,[]);

% noise reduction
% using a median filter

I=med(I);I=imread('mercury.tif');
I=med(I);

figure;
imshow(I);

I=med(I);
figure;
imshow(I);
