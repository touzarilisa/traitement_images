function [new_image]=photomaton(init_image)

    I=init_image;
    [a,b,c]=size(I);
    new_image=I;
    
    for i=1:c
        for j=1:2:a
            for k=1:2:b
                new_image((j+1)/2,(k+1)/2,i)=I(j,k,i);  
                
                new_image((j+1)/2+a/2,(k+1)/2,i)=I(j+1,k,i);  
                
                new_image((j+1)/2,(k+1)/2+b/2,i)=I(j,k+1,i);
                
                new_image((j+1)/2+a/2,(k+1)/2+b/2,i)=I(j+1,k+1,i);
            end 
            
        end
    end
end