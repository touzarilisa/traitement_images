function [new_image]=accentuation(init_image)
    
    I=imread(init_image);
    new_image=I;
    [a,b,c]=size(I);
    
    filtered_image=zeros(a+2,b+2,c);
    
    filtered_image(2:a+1,2:b+1,1)=I(:,:,1);
    filtered_image(2:a+1,2:b+1,2)=I(:,:,2);
    filtered_image(2:a+1,2:b+1,3)=I(:,:,3);
    
    filtre=[0,-0.5,0;-0.5,3,-0.5;0,-0.5,0];
    
    for i =1:c
        for j= 1:a
            for k =1:b
                new_image(j,k,i)= sum(sum(filtre.*filtered_image(j:j+2,k:k+2,i)));
                new_image(j,k,i)=min(new_image(j,k,i),255);
                new_image(j,k,i)=max(new_image(j,k,i),0);
            end
        end
    end
            
    