function x = blur(img)
  w = [1/16, 2/16, 1/16;
       2/16, 4/16, 2/16;
       1/16, 2/16, 1/16];
  x = convolution(img, w);
endfunction