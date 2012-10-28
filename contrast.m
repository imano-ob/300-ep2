function x = contrast(img)
  intensityProb(256) = 0;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      #WHY IS OCTAVE 1 INDEXED INSTEAD OF 0 INDEXED?
      ++intensityProb(img(i, j)+1);
    endfor
  endfor
  intensityProb .*= 1.0
  intensityProb ./= numel(img)
    fda(1) = intensityProb(1);
  for i = 2:256
    fda(i) = fda(i-1) + intensityProb(i);
  endfor
  fdamin = min(fda)
  fdamax = max(fda);
  for i = 1:256
    l = (fda(i) - fdamin) * 255
    k = fdamax - fdamin
    #k = (numel(img) - fdamin)
    m = l/k
    h(i) = round ( m)
  endfor
  x = img;
  for i = 1:size(img)(1)
    for j = 1:size(img)(2)
      x(i, j) = h(x(i,j)+1)-1;
    endfor
  endfor
endfunction