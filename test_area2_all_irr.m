clear all;
close all;

f1 = imread('bottle crate/bottle_crate_1.png');
f2 = imread('bottle crate/bottle_crate_2.png');
f3 = imread('bottle crate/bottle_crate_3.png');
f4 = imread('bottle crate/bottle_crate_4.png');
f5 = imread('bottle crate/bottle_crate_5.png');
f6 = imread('bottle crate/bottle_crate_6.png');
f7 = imread('bottle crate/bottle_crate_7.png');
f8 = imread('bottle crate/bottle_crate_8.png');
f9 = imread('bottle crate/bottle_crate_9.png');
f10 = imread('bottle crate/bottle_crate_10.png');
f11 = imread('bottle crate/bottle_crate_11.png');
f12 = imread('bottle crate/bottle_crate_12.png');
f13 = imread('bottle crate/bottle_crate_13.png');
f14 = imread('bottle crate/bottle_crate_14.png');
f15 = imread('bottle crate/bottle_crate_15.png');
f16 = imread('bottle crate/bottle_crate_16.png');
f17 = imread('bottle crate/bottle_crate_17.png');
f18 = imread('bottle crate/bottle_crate_18.png');
f19 = imread('bottle crate/bottle_crate_19.png');
f20 = imread('bottle crate/bottle_crate_20.png');
f21 = imread('bottle crate/bottle_crate_21.png');
f22 = imread('bottle crate/bottle_crate_22.png');
f23 = imread('bottle crate/bottle_crate_23.png');
f24 = imread('bottle crate/bottle_crate_24.png');


%binary image
bw_15 = im2bw(f15);
BW_15 = imbinarize(f15);
bw_10 = im2bw(f10);
BW_10 = imbinarize(f10);

BW_13 = imbinarize(f13);

crop_BW_15 = imcrop(imbinarize(f24),[80,78,480,380]);
imshow(crop_BW_15);

%fast algorithm
% corners = detectFASTFeatures(f10);
% imshow(f10);
% hold on;
% plot(corners.selectStrongest(10));

%%%%%%%bwboundaries
% [B,L,N,A] = bwboundaries(bw_15, 'noholes');
% imshow(label2rgb(L, @jet, [.5 .5 .5]))
% hold on
% for k = 1:length(B)
%    boundary = B{k};
%    plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
% end



%Sobel
% [~,threshold] = edge(f15,'sobel');
% fudgeFactor = 1.0;
% BW_sobel = edge(f15,'sobel',threshold * fudgeFactor);
% imshow(BW_sobel)

%Sobel 
% BW_sobel = edge(f15, 'sobel');
% imshow(BW_sobel);

%Canny
%brighten(BW_15);
% BW_canny = edge(f15, 'Canny');
% imshow(BW_canny);

% se90 = strel('line',3,90);
% se0 = strel('line',3,0);
% BWsdil = imdilate(BWs,[se90 se0]);
%imshow(BWsdil)

%BWdfill = imfill(BWsdil,'holes');
%imshow(BWdfill)
% 
%BWnobord = imclearborder(BWdfill,4);
%imshow(BWnobord)
