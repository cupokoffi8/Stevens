% MatLab program for edge sharpening.
% Read the image in variable 'a'
a=imread("Blurry.jpg");

% Defined the laplacian filter.
Lap=[0 1 0; 1 -5 1; 0 1 0];

% Convolve the image read
% in 'a' with Laplacian mask.
a1=convn(a,Lap,'same');

% After convolution the intensity
% Values go beyond the range.
% Normalise the range of intensity.
a2=uint8(a1);

% Display the sharpened image.
imtool(abs(a-a2),[])

% Define strong laplacian filter
lap=[-1 -1 -1; -1 8 -1; -1 -1 -1];

% Apply filter on original image
a3=convn(a,lap,'same');

% Normalise the resultant image.
a4=uint8(a3);

% Display the sharpened image.
imtool(abs(a+a4),[])
