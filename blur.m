function x = blur(img)
  w = [1/16, 2/16, 1/16;
       2/16, 4/16, 2/16;
       1/16, 2/16, 1/16];
  x = uint8(convolution(img, w));
endfunction