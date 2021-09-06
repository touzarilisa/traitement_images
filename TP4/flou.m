I=imread('Profondeur.png');
[a,b,c]=size(I)

new_Image=I;
for i =1:c
    for j=1:a-10
        for k=1:b-10
            %if k<500 && k> 800 && j< 25 && j> 350
            new_Image(j,k,i)=sum(sum(I(j:j+10,k:k+10,i)))/100;
        end
    end
end
new_Image(25:350,450:800,:)=I(25:350,450:800,:);
imshow(new_Image);