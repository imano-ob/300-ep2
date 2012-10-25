
function x = contrastAdjust(img)
  intensityProb(255) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      ++intensityProb(img(i)(j));
    endfor
  endfor
  intensityProb /= numel(img);
  fda(1) = intensityProb(1);
  for i = 2:255
    fda(i) = fda(i-1) + intensityProb(i);
  endfor
  
  