function y = generateY(y, num_labels, m)
  tmpY = zeros(m, num_labels);
  for idx = 1:m
    tmpY(idx, y(idx)) = 1;
  endfor
  y = tmpY;
end