function [x, mask] = sharpen(img)
  w = [-1, -1, -1;
       -1,  8, -1;
       -1, -1, -1];
  mask = convolution(img, w);
  mask .-= min(min(mask));
  mask .*= (255/max(max(mask)));
  mask .-= 127;
  x = double(img) + double(mask);
  x = uint8(x);
  mask .+= 127;
  mask = uint8(mask);
endfunction
