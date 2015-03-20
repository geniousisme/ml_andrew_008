function J = CostReg(theta, X, y, m, hx, lambda)


J = Cost( theta, X, y, m, hx ) + ( lambda / ( 2 * m ) ) * sum( theta( 2:length(theta) ) .^ 2 );

end
