function Y = generateY(y, num_labels, m, Y)
  for idx = 1:m
    Y(idx, y(idx)) = 1;
  endfor
end