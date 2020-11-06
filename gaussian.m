a = imread('classes.jpg');
a1=rgb2gray(a);
an=imnoise(a1,'gaussian',0.01);
figure,imshow(a);
figure,imshow(a1);
figure,imshow(an);
sigma=3;
cutoff=ceil(3*sigma);
h=fspecial('gaussian',2*cutoff+1,sigma);
out = conv2(a1,h,'same');
figure,imshow(out);
figure,imshow(out/256);
out1=conv2(an,h,'same');
figure,imshow(out1/256);
w=wiener2(an,[5,5]);
figure,imshow(w);
surf(1:2*cutoff+1,1:2*cutoff+1,h)