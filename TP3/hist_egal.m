function [new_image]=hist_egal(init_image)
    
    % gray image
    I=init_image;
    R=I(:,:,1);
    G=I(:,:,2);
    B=I(:,:,3);
    I= 0.299 * R + 0.587 * G + 0.114 * B;
    
    [a,b,c]=size(I); 
    a=a+256-mod(a,256);
    b=b+256-mod(b,256);
    
    new_image=imresize(I,[a,b]);
    new_image=reshape(new_image,[1,a*b]);
    
    [sorted,index]=sort(new_image);
    
    x=(a*b)/256;
    
    
    for k=0:255
        sorted(x*k+1:x*k+x)=k;
        
    end
    
    new_image(index)=sorted;
    new_image=reshape(new_image,[a,b]);
end
                    
            
                    
              