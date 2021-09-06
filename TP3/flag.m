function [new_image]=flag(init_image1,init_image2)

    I1=init_image1;
    I2=init_image2;
    
    [a,b,c]=size(I1);            
    I2=imresize(init_image2,[a,b]);
    
    new_image=I1;
    x=0.6;
    
    for i = 1:c
        for j = 1:a
            for k=1:b
                
                new_image(j,k,i) = (1-x)*I1(j,k,i)+x*I2(j,k,i);
            end
        end
    end
end
    
    
    
               
    
                
            
    
    
    