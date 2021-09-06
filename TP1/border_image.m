function[new_image]=border_image(init_image)
    I= imread(init_image);
    [a b c]=size(I);
    n_image=I;
    
    for i=1:10
        n_image(i,:,1)=0;
        n_image(i,:,2)=0;
        n_image(i,:,3)=150;
            
        n_image(a+1-i,:,1)=0;
        n_image(a+1-i,:,2)=0;
        n_image(a+1-i,:,3)=150;
         
        n_image(6:a-5,i,1)=0;
        n_image(6:a-5,i,2)=0;
        n_image(6:a-5,i,3)=150;
            
        n_image(6:a-5,b+1-i,1)=0;
        n_image(6:a-5,b+1-i,2)=0;
        n_image(6:a-5,b+1-i,3)=150;
        
    end
    new_image=n_image;
end
            
            