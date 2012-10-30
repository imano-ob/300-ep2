#!/usr/bin/octave

args = argv();

if size(args) < 2
  disp("Numero de argumentos inválido!");
  exit()
endif
filename = args{1};
option = args{2};
image = imread(filename);
if strcmp(option, "-contrast")
  finalimage = contrast(image);
elseif strcmp(option, "-blur")
  finalimage = blur(image);
elseif strcmp(option, "-sharpen")
  finalimage = sharpen(image);
else
  disp("Opção não reconhecida!");
  exit();
endif
dotpos = size(filename)(2) - 3;
finalfilename = filename;
finalfilename(dotpos:dotpos+9) = "-final.jpg";
imwrite (finalimage, finalfilename);