
function x = contrastAdjust(img)
  intensityProb(255) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      ++intensityProb(img(i, j));
    endfor
  endfor
  intensityProb /= numel(img);
  fda(1) = intensityProb(1);
  for i = 2:255
    fda(i) = fda(i-1) + intensityProb(i);
  endfor
  fdamin = min(fda);
  # fdamax = max(fda);
  for i = 1:255
    h(i) = round ((fda - fdamin) / (numel(img) - fdamin) * 255);
  endfor
  x = img;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      x(i, j) = h(x(i,j));
    endfor
  endfor
endfunction