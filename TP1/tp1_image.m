% extraction de la composante rouge d'une image
R=red_image('Lena.jpg');
figure;
imshow(R);


% creer le négatif d'une image
n_image=negative_image('Lena.jpg');
figure;
imshow(n_image);

% Convertir une image couleur en noir et blanc
gr_image=grey_image('Lena.jpg');
figure;
imshow(gr_image);

% Convertir une image couleur en nuances de sépia
sep_image= sepia_image('Lena.jpg');
figure;
imshow(sep_image);

% Contrast
c_image= contrast_image('Lena.jpg');
figure;
imshow(c_image);

% Seuillage --------  à completer pour une image en couleur
s_image=seuil_image('Lena.jpg');
figure;
imshow(s_image);

% Flip
f_image=flip_image('Lena.jpg');
figure;
imshow(f_image);

% Border
b_image=border_image('Lena.jpg');
figure;
imshow(b_image);

% Relief ------ gestion des bords
rl_image= relief_image('donjon.png');
figure;
imshow(rl_image);

% Pixeliser
px_image=pixel_image('Lena.jpg');
figure;
imshow(px_image);




