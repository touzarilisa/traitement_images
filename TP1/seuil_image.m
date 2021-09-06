function[new_image]= seuil_image(init_image)
    
    I= grey_image(init_image);
    [a b c]= size(I);
    for i =1:a
        for j=1:b
            for k=1:c
                if I(i,j,k)<100
                    I(i,j,k)=0;
                elseif I(i,j,k)>150
                    I(i,j,k)=255;
                end
            end
        end
    end
    new_image=I;
end