clear all;
close all;

%image_name = [f, num2str(1)];
% for im_num = 1:10
%     im_path = sprintf('bottle crate/bottle_crate_%d.png',im_num); 
%     file_num =  sprintf('f%d',im_num); 
%     file_num = imread(im_path);
% end

figure;   
for im_num = 13:24     
im_path = sprintf('bottle crate/bottle_crate_%d.png',im_num); 
title_name = sprintf('figure #%d',im_num);
subplot(3,4,im_num);
%subplot(3,4,im_num-12);
%subplot(4,6,im_num);
imshow(imread(im_path));
title(title_name);
end
    
