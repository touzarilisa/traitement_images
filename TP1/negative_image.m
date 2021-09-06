function [new_image]= negative_image(init_image)
    
    positive_image= imread(init_image);
    new_image= 255-positive_image;

end