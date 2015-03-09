function hx = feedForward(X, m, Theta1, Theta2)

a1 = [ones(m, 1) X];
z2 = a1 * Theta1';
a2 = [ones(m, 1) sigmoid(z2)];
z3 = a2 * Theta2';
hx = sigmoid(z3);

end