function [new_image]=all_rgb(init_image)
    I=init_image;
    new_image=I;
    
    [a,b,c]=size(I);
    
    R=I(:,:,1);
    G=I(:,:,2);
    B=I(:,:,3);
    
    R=reshape(R,[a*b,1]);
    G=reshape(G,[a*b,1]);
    B=reshape(B,[a*b,1]);
    
    new_mat=[R,G,B];
    mat_ref=new_mat;
    
    x=[0,0,0];   
    y=[];
        
    for i =1:a*b        
        element=mat_ref(i,:);
        if (mat_ref(i,:)==[0,0,0])
            mat_ref(i,:)=mat_ref(i,:);
        else
            x=element;
            for j=i:a*b
                    if (new_mat(j,:)==element)
                        y=[y,j];                        
                    end  
                end                           
                
                for k = 2:length(y)
                    mat_ref(y(k),:)=[0,0,0];
                    r=randi(3);
                    if  ( new_mat(y(k),r)<255)              
                        new_mat(y(k),r)=new_mat(y(k),r)+k*20;
                    
                    else
                        new_mat(y(k),:)=[255,255,255];   
                    end
                    
                end
                y=[];            
        end
        i
    end
    
    R=reshape(new_mat(:,1),[a,b]);
    G=reshape(new_mat(:,2),[a,b]);
    B=reshape(new_mat(:,3),[a,b]);
    
    new_image(:,:,1)=R;
    new_image(:,:,2)=G;
    new_image(:,:,3)=B;
end
    
            
        