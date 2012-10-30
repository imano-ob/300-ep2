function [x, intensityCount, finalIntensityCount] = contrast(img)
  intensityCount(256) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      ++intensityCount(img(i, j)+1);
    endfor
  endfor
    fda(1) = intensityCount(1);
  for i = 2:256
    fda(i) = fda(i-1) + intensityCount(i);
  endfor
  fdamin = min(fda);
  for i = 1:256
    h(i) = round ( (fda(i) - fdamin) / (numel(img) - fdamin) * 255);
  endfor
  x = img;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      x(i, j) = h (x (i,j) + 1);
    endfor
  endfor
  finalIntensityCount(256) = 0;
  for i = 1:size(x)(1)
    for j = 1:size(x)(2)
      ++intensityCount(x(i, j)+1);
    endfor
  endfor
endfunction