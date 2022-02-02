% Machine vision 2020, home assignment 
% Topic 1: Calculation of number of bottles in a crateFile
% ZongyueLi student No.308839
clear all;
close all;
actual_bottle = [20 18 20 20 20 20 20 20 13 18 20 20 19 20 19 20 17 20 16 19];
actual_val = actual_bottle(1,2);

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

%imshow(f3)

%im_e = edge(f21,'canny');
%imshow(im_e)

im_bw = im2bw(f14);
%im_bw = imbinarize(f8);
imshow(f14)

[centerB, radiiB, metricB] = imfindcircles(im_bw,[25 50],'ObjectPolarity', 'dark');
viscircles(centerB, radiiB, 'EdgeColor', 'r');
[mB, nB] = size(centerB);
%[centers, radii, metric] = imfindcircles(im_bw,[15 40]);
%[centers, radii, metric] = imfindcircles(im,[15 40]);

[centerS, radiiS, metricS] = imfindcircles(f14,[15 28], 'ObjectPolarity', 'bright');
viscircles(centerS, radiiS, 'EdgeColor', 'b');
[mS, nS] = size(centerS);

fprintf('the number of big bottles are %d \n',mB)
fprintf('the number of small bottles are %d \n',mS)



