function x = contrast(img)
  intensityProb(256) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      ++intensityProb(img(i, j)+1);
    endfor
  endfor
    fda(1) = intensityProb(1);
  for i = 2:256
    fda(i) = fda(i-1) + intensityProb(i);
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
endfunction