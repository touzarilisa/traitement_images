function [new_image]= red_image(init_image)
    I = imread(init_image);
    % Composante rouge
    n_image=I;
    n_image(:,:,2)=0;
    n_image(:,:,3)=0;
    
    new_image=n_image;
    
    
end
