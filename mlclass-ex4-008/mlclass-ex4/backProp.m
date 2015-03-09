function [Theta1_grad Theta2_grad] = backProp(Theta1, Theta2, Theta1_grad, Theta2_grad, X, y, m, lambda)

Delta2 = zeros(size(Theta2_grad)); %Delta2 = 0, Delta1 = 0 is also workable.
Delta1 = zeros(size(Theta1_grad));

for t = 1:m
  a1 = [1; X(t, :)'];  
  z2 = Theta1 * a1;
  a2 = [1; sigmoid(z2)];
  z3 = Theta2 * a2;
  a3 = sigmoid(z3);
  
  d3 = a3 - y(t, :)';
  d2 = (Theta2(:, 2:end)' * d3) .* sigmoidGradient(z2);

  Delta2 += d3 * a2';   
  Delta1 += d2 * a1';  
endfor 

Theta2_grad = Delta2 / m;
Theta1_grad = Delta1 / m;

% Implement Regularization

Theta2_grad(:, 2:end) += (lambda / m) * Theta2(:, 2:end);
Theta1_grad(:, 2:end) += (lambda / m) * Theta1(:, 2:end);


end