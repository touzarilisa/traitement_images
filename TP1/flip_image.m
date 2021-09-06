function[new_image]= flip_image(init_image)
    I=imread(init_image);
    [a b c]=size(I);
    n_image=I;
    for i =1:c
        for j=1:a
            n_image(j,:,i)=I(a+1-j,:,i);
        end
    end
    new_image=n_image;
    
end
            