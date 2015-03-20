function grad = gradientReg(theta, X, y, m, hx, lambda)

tmp = theta;
tmp( 1 ) = 0;
grad = gradient(theta, X, y, m, hx) + tmp .* ( lambda / m );


end
