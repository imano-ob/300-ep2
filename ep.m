
function x = contrastAdjust(img)
  intensityCount(255) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      ++intensityCount(img(i)(j));
    endfor
  endfor
  