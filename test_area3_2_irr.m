clear all;
close all;
f10 = imread('bottle crate/bottle_crate_10.png');
f15 = imread('bottle crate/bottle_crate_15.png');
f13 = imread('bottle crate/bottle_crate_13.png');
f20 = imread('bottle crate/bottle_crate_20.png');
f21 = imread('bottle crate/bottle_crate_21.png');
f22 = imread('bottle crate/bottle_crate_22.png');
%subplot(1,2,1);
%imshow(imbinarize(f15));
%subplot(1,2,2);
%imshow(im2bw(f15));
bw_10 = im2bw(f10);
BW_10 = imbinarize(f10);
bw_15 = im2bw(f15);
BW_15 = imbinarize(f15);
BW_13 = imbinarize(f13);
BW_20 = imbinarize(f20);
BW_21 = imbinarize(f21);
BW_22 = imbinarize(f22);
%get the lenght width of image
%[m, n] = size(f10);
crop_BW_13 = imcrop(BW_13,[57.5,78,500,380]);
crop_BW_10 = imcrop(BW_10,[57.5,78,500,380]);
%imshow(crop_BW_10);
crop_BW_15 = imcrop(BW_15,[57.5,78,500,380]);
crop_BW_20 = imcrop(BW_20,[57.5,78,500,380]);
crop_BW_21 = imcrop(BW_21,[57.5,78,500,380]);
crop_BW_22 = imcrop(BW_22,[57.5,78,500,380]);
%imshow(crop_BW_15);

%blob
[labeledImage, numberOfBlobs] = bwlabel(crop_BW_10);
blobMeasurements = regionprops(labeledImage, 'area');

BW_area = bwareafilt(crop_BW_10, 1);
val_area = bwarea(BW_area)
imshowpair(crop_BW_10,BW_area,'montage')

%BW = bwareafilt()



%visboundaires
% BW_bound = visboundaries(bw_15);
% imshow(BW_bound);



%Sobel 
% BW_sobel = edge(f15, 'sobel');
% imshow(BW_sobel);

%Canny
%brighten(BW_15);
% BW_canny = edge(f15, 'Canny');
% imshow(BW_canny);



% imshow(f15)
% im = mean(f15,4);
% im = (im-min(im(:))) / (max(im(:))-min(im(:)));
% 
% bin = im2bw(im);
% SE = strel('disk',1);
% bin = ~imerode(~bin,SE);
% bin = ~imerode(~bin,SE);
% 
% bin =~imdilate(~bin,SE);
% bin =~imdilate(~bin,SE);
% imshow(bin);




% f10_hsv= rgb2hsv(f10);
% for i = 1:m 
%   for j = 1: n
%     f10_hsv(i,j,3) =0.7 * hsv(i,j,3); %darken the image
%   end
% end
% imshow(f10_hsv);