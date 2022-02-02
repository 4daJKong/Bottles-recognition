% Machine vision 2020, home assignment 
% Topic 1: Calculation of number of bottles in a crateFile
% ZongyueLi student No.308839
% no collaborator

clear all;
close all;

for im_num = 1:12    % 13-24     
    im_path = sprintf('bottle crate/bottle_crate_%d.png',im_num); 
    %1-12
    title_name = sprintf('figure #%d',im_num);
    subplot(3,4,im_num);
    
    
    %13-24 alternative
    %title_name = sprintf('figure #%d',im_num);
    %subplot(3,4,im_num-12);
    
    
    im_ori = imread(im_path);
    imshow(im_ori);
    title(title_name);
    
    
    %im_bw = imbinarize(im_ori); 
    im_bw = im2bw(im_ori);
    %detect big regular circle bottles 
    [centerB, radiiB, metricB] = imfindcircles(im_bw,[25 50],'ObjectPolarity', 'dark');
    [mB, nB] = size(centerB);
    %detect small regular circle bottles
    [centerS, radiiS, metricS] = imfindcircles(im_ori,[15 28], 'ObjectPolarity', 'bright');
    [mS, nS] = size(centerS);
    
    %fprintf('the number of big bottles are %d \n',mB)
    %fprintf('the number of small bottles are %d \n',mS)
    num_reg = mB + mS; 
    
    %detect irregular bottle
    num_irreg = 0;
    if num_reg < 20
        im_BW = imbinarize(im_ori);
        crop_BW = imcrop(im_BW,[57.5,78,500,380]);
        area_BW = bwareafilt(crop_BW, 1);
        area_val = bwarea(area_BW);
        if (2500 < area_val) && (area_val < 6300)
            num_irreg = num_irreg + 1;
        end
    end
   
    
    
    xlabel(sprintf('detected reg:%d, irreg:%d',num_reg,num_irreg));
end




%regular bottles detection, take fig#10 as example%
%f10 = imread('bottle crate/bottle_crate_10.png');
% im_bw = im2bw(f10);
% [centerB, radiiB, metricB] = imfindcircles(im_bw,[25 50],'ObjectPolarity', 'dark');
% viscircles(centerB, radiiB, 'EdgeColor', 'r');
% [mB, nB] = size(centerB);
% [centerS, radiiS, metricS] = imfindcircles(f10,[15 28], 'ObjectPolarity', 'bright');
% viscircles(centerS, radiiS, 'EdgeColor', 'b');
% [mS, nS] = size(centerS);
% fprintf('the number of big bottles are %d \n',mB)
% fprintf('the number of small bottles are %d \n',mS)


%irregular bottles detection, take fig#10 as example%
%f10 = imread('bottle crate/bottle_crate_10.png');
%BW_10 = imbinarize(f10);
%crop_BW_10 = imcrop(BW_10,[57.5,78,500,380]);
% BW_area = bwareafilt(crop_BW_10, 1);  %find the largest area in the image
% val_area = bwarea(BW_area)
% imshowpair(crop_BW_10,BW_area,'montage')

