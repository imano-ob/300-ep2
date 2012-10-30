function x = convolution(f,g)
  x = f;
  for i = 2:size(f)(1)-1
    for j = 2:size(f)(2)-1
    x(i, j) = sum(sum( f(i-1:i+1, j-1:j+1) .* g));
    endfor
  endfor
endfunction