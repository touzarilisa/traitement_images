function [new_image]=bruit(init_image)

    I=imread(init_image);
    [a,b,c]=size(I);
    
    for i =1:40000
        
        I(randi([1,size(I,1)],1), randi([1,size(I,2)],1) ,:)=255;
    end
    new_image=I;