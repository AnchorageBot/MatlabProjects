% Color Imaging RGB Channels
% Divide the given image in 3 parts(RGB) and stack them together to get a color image

% Read the image
img = imread('image.jpg');

% Get the size (rows and columns) of the image 
% r=1023, c=400, rr=341
[r,c] = size(img)
rr=r/3

% Split the image into three equal parts and store them in B, G, R channels
% separates the diff color channels; but puts them along dim2
clr_img = reshape(img, [rr 3 c]);
% reorders the dims to put channels along dim3
clr_img = permute(img, [1 3 2]);   
% imcrop() takes an array of [xLeft, yTop, widthInColumnsX, heightInRowsY]
% x=/=rows, y=/=columns
% Matricies of size (341x400)
% B=imcrop(img,[1,1,c-1,rr-1]);
% G=imcrop(img,[1,1*rr+1,c-1,rr-1]);
% R=imcrop(img,[1,2*rr+1,c-1,rr-1]);
% Matricies of size (341x400)
% B=imcrop(img,[1,1,c-1,rr-1])
% G=imcrop(img,[1,1*rr,c-1,rr-1])
% R=imcrop(img,[1,2*rr,c-1,rr-1])
% Matricies of size (342x400)
% B=imcrop(img,[1,1,c,rr]);
% G=imcrop(img,[1,1*rr,c,rr]);
% R=imcrop(img,[1,2*rr,c,rr]);

% Concatenate R,G,B channels and assign the RGB image to ColorImg variable
ColorImg(:,:,1) = R;
ColorImg(:,:,2) = G;
ColorImg(:,:,3) = B;
imshow(ColorImg)
