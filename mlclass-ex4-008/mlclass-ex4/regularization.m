function reg = regularization(Theta1, Theta2, lambda, m)
  reg = (mtrxSqrtSum(Theta1(:, 2:size(Theta1, 2))) + mtrxSqrtSum(Theta2(:, 2:size(Theta2, 2)))) * lambda / (2 * m);
end