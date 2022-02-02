clear all;
close all;
num_reg = 14;
% if num_reg < 20
%     fprintf('yes');
% end
area_BW = 5000;
if (2600 < area_BW) && (area_BW < 6300)
    fprintf('no');
    num_reg = num_reg + 1;
end
num_reg * 2