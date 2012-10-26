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