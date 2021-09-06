function [new_image]=gradient(init_image)

    I=imread(init_image);
    I=rgb2gray(I);
    
    new_image=I;
    [a,b,c]=size(I);
    
    filtered_image=zeros(a+2,b+2);
    
    filtered_image(2:a+1,2:b+1,1)=I(:,:);    
    
    filtre=[-1,0,1;-2,0,2;-1,0,1];
    
    for j= 1:a
        for k =1:b
            new_image(j,k)= sum(sum(filtre.*filtered_image(j:j+2,k:k+2)));
                
        end
    end
    