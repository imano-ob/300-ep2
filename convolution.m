function x = convolution(f,g)
  x = double(f);
  for i = 2:size(f)(1)-1
    for j = 2:size(f)(2)-1
    x(i, j) = sum(sum( double(f(i-1:i+1, j-1:j+1)) .* double(g)));
    endfor
  endfor
endfunction