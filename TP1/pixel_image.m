function[new_image]= pixel_image(init_image)
    I=imread(init_image);
    [a b c]=size(I);
        
    nbr_l=floor(a/10);
    nbr_c= floor(b/10);
    
    n_image=I;   
    
    for i=0:nbr_l-1
        for j =0:nbr_c-1
            for k =1:3
                n_image(1+i*10:10+i*10 ,1+j*10:10+j*10,k)= floor(sum(sum(I(1+i*10:10+i*10 ,1+j*10:10+j*10,k)))/100);
            end
        end
    end      
    
    bord_l=mod(a,10);
    bord_c=mod(b,10);
    
    % le reste des lignes
    for k=1:3
        for j=0:nbr_c-1
            n_image(nbr_l*10+1:a,1+j*10:10+j*10,k)= floor(sum(sum(I(nbr_l*10+1:a ,1+j*10:10+j*10,k)))/100);
                       
        end
    end
    % le reste des colonnes    
    for k=1:3
        for j=0:nbr_l-1
            n_image(1+j*10:10+j*10,nbr_c*10+1:b,k)= floor(sum(sum(I(1+j*10:10+j*10,nbr_c*10+1:b ,k)))/100);                       
        end
    end
    
    new_image=n_image;
    
end


