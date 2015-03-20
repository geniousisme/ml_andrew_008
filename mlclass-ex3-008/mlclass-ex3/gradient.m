function grad = gradient(theta, X, y, m, hx)

grad = ( X' * ( hx - y ) ) / m;

end