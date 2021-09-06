function [new_image]= sepia_image(init_image)
    I=imread(init_image);
    inputRed =I(:,:,1);
    inputGreen= I(:,:,2);
    inputBlue = I(:,:,3);
    
    outputRed = (inputRed * .393) + (inputGreen *.769) + (inputBlue * .189);
    outputGreen = (inputRed * .349) + (inputGreen *.686) + (inputBlue * .168);
    outputBlue = (inputRed * .272) + (inputGreen *.534) + (inputBlue * .131);
    
    new_image= uint8(cat(3, outputRed, outputGreen, outputBlue));
end