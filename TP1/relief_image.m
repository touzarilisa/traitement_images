function[new_image]= relief_image(init_image)
    I= imread(init_image);
    [a b c]=size(I);
    n_image=I;
    
    for j=1:c
        for i=0:9
            
            n_image(i+1,i+1:b-i,j)= n_image(i+1,i+1:b-i,j)+65; 
            
            n_image(a-i,i+1:b-i,j)= n_image(a-i,i+1:b-i,j)+65;
        
            n_image(i+1:a-i,i+1,j)=n_image(i+1:a-i,i+1,j)-40; 
               
            n_image(i+1:a-i,b-i,j)=n_image(i+1:a-i,b-i,j)-40;
            
        end        
    end
    
    new_image=n_image;
end
