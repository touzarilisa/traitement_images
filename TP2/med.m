function [new_image]=med(init_image)
    
    I=init_image;
    [a,b,c]=size(I)    
    new_image=I;
    
    nbr_l=a-2;
    nbr_c= b-2;
    
    for k=1:c
        for i=1:nbr_l
            for j=1:nbr_c
                m=reshape(I(i:i+2,j:j+2,k),1,9);                
                l=sort(m);                
                new_image(i+1,j+1,k)=l(5);
                end
            end
        end
    end