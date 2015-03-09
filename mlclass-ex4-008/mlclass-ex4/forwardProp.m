function [z2 a2 z3 a3] = forwardProp(X, m, Theta1, Theta2)

a1 = [ones(m, 1) X];
z2 = a1 * Theta1';
a2 = [ones(m, 1) sigmoid(z2)];
z3 = a2 * Theta2';
a3 = sigmoid(z3);

end