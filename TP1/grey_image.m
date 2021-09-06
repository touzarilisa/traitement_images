function [new_image]=grey_image(init_image)
    I=imread(init_image);
    R=I(:,:,1);
    G=I(:,:,2);
    B=I(:,:,3);
    new_image= 0.299 * R + 0.587 * G + 0.114 * B;
end