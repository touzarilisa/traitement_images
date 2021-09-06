function [new_image]=f1(init_image)
    
    I= imread(init_image);
    % egalisation d'histogramme
    new_image=histeq(I);
    
    
