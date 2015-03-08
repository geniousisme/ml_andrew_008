function J = costFunction(hx, y, num_labels, m)
sumJm = 0; 
for idx = 1:m
  tmpHx = hx(idx, :);
  tmpY  = y(idx, :);
  tmpJ = -tmpY * log(tmpHx') - (1 - tmpY) * log(1 - tmpHx');
  sumJm += tmpJ;
endfor
J = sumJm / m;
end