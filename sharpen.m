function [x, mask] = sharpen(img)
  w = [-1, -1, -1;
       -1,  8, -1;
       -1, -1, -1];
  mask = convolution(img, w);
  x = double(img) + double(mask);
  x = uint8(x);
endfunction
