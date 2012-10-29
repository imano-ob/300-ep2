function x = sharpen(img)
  w = [-1/16, -1/16, -1/16;
       -1/16,  8/16, -1/16;
       -1/16, -1/16, -1/16];
  mask = convolution(img, w);
  x = img + mask; # Isso talvez esteja errado
endfunction
