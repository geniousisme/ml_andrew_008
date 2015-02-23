function J = Cost(theta, X, y, m, hx)

J = sum( -y .* log( hx ) - ( 1 - y ) .* log( 1 - hx ) ) / m;

end
