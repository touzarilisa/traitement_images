function [new_image]=clean_periodic_clown(init_image)

    I=imread(init_image);
    image_mag=fftshift((fft2(double(I))));

    % construction of mask
    s=log(abs(image_mag));
    imwrite(s/max(s(:)),'mask.tif');
    mask1=imread('mask1.tif');
    mask1=mask1(:,:,1);
    mask1=double((mask1>0));    

    image_mag=image_mag.*mask1;

    new_image=real(ifft2(ifftshift(image_mag)));

   
    
    