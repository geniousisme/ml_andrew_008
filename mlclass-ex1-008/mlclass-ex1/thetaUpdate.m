function theta = thetaUpdate(X, y, theta, alpha, m)
  hx = theta' * X';
  for idx = 1:size(theta, 1)
      theta(idx) = theta(idx) - (alpha / m) * ((hx - y') * X(:, idx));
  endfor
end