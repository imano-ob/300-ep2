function x = convolution(f,g)
  x = uint32(f);
  for i = 2:size(f)(1)-1
    for j = 2:size(f)(2)-1
    x(i, j) = uint32(sum(sum( double(f(i-1:i+1, j-1:j+1)) .* double(g))));
    endfor
  endfor
endfunction