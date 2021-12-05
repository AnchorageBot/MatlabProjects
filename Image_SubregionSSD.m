% *Extract Image Sub-region Data and Run SSD Analysis*
% 
% Access the top-left and bottom right sub-regions of the MIT_CameraMan.tif 
% image and compute their SSD (Sum of Squared Differences)

img = imread('MIT_CameraMan.tif');
subimg1 = img(1:50,1:50);
subimg2 = img(  end -49 :end,  end -49 :end);
SSD = sum(sum((double(subimg1) - double(subimg2)).^2))
