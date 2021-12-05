% Make a photo montage using different color spaces

RGB = imread('HSV1.jpg');

% Get the size (rows and columns) of the image 
% r=840, c=3939, 
[r,c] = size(RGB)

% Show image
imshow(RGB)

% Get the size (rows and columns) of the subimage
% rr=420, cc=656.5
rr=r/2
cc=c/6

% Get a subimage
subimg1 = RGB(1:400,1:655);

% Show subimage
imshow(subimg1)

% Montage Function displays multiple image frames as rectangular montage
montage(RGB)

% Convert RGB color values to HSV color space
HSV = rgb2hsv(RGB);
% Convert RGB color values to NTSC color space
NTSC = rgb2ntsc(RGB);
% Convert RGB color values to YCbCr color space
YCbCr = rgb2ycbcr(RGB);
% Montage the fusion
montage({RGB,HSV,NTSC,YCbCr}, 'Size', [2 2]);
