function[new_image]=contrast_image(init_image)
    I=imread(init_image);
    [a b c]=size(I);
    for i =1:a
        for j=1:b
            for k=1:c
                if I(i,j,k)<30
                    I(i,j,k)=0;
                elseif I(i,j,k)>255
                    I(i,j,k)=255;
                else 
                    I(i,j,k)= (255.0 / 195.0) * (I(i,j,k) - 30) + 0.5;
                end
            end
        end
    end
    new_image=I;
end