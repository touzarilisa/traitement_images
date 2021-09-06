% photomaton
I=imread('MonaLisa_square.jpg');
for i =1:12
    I=photomaton(I);
    figure;
    imshow(I);
end

%flags
% france flag
I1=imread('Mark.png');
I2=imread('France.png');

I=flag(I1,I2);
figure;
imshow(I);

% germany flag
I2=imread('Allemagne.png');

I=flag(I1,I2);
figure;
imshow(I);

% suisse flag
I2=imread('Suisse.png');

I=flag(I1,I2);
figure;
imshow(I);

% croatie
I2=imread('Croatie.png');

I=flag(I1,I2);
figure;
imshow(I);

% égalisation exacte d'histogramme
I=imread('Lena.jpg');
I=hist_egal(I);
figure;
imshow(I);
histogram(I)

% all RGB
% le test se fait dans test_all_rgb

%
