


function x = contrast(img)
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

function x = convolution(f,g)
  x = f;
  for i = 1:size(f)(1)
    for j = 1:size(f)(2)
      #Eu odeio esse teco. Pensar em um jeito menos feio de fazer.
      if i == 1
        beginl = 0
      else
        beginl = -1
      endif
      if i == size(f)(1)
        endl = 0
      else
        endl = 1
      endif
      if j == 1
        beginc = 0
      else
        beginc = -1
      endif
      if j == size(f)(2)
        endc = 0
      else
        endc = 1
      endif
      #Eu não me orgulho dessa linha...
      x(i, j) = sum(sum( f(i+beginl:i+endl, j+beginc:j+endc) .* g(beginl+1:endl+1, beginc+1:endc+1));
    endfor
  endfor
endfunction

function x = blur(img)
  w = [1/16, 2/16, 1/16;
       2/16, 4/16, 2/16;
       1/16, 2/16, 1/16];
  x = convolution(img, w);
endfunction

function x = sharpen(img)
  w = [-1/16, -1/16, -1/16;
       -1/16,  8/16, -1/16;
       -1/16, -1/16, -1/16];
  mask = convolution(img, w);
  x = img + mask # Isso talvez esteja errado
endfunction
  