function grad = gradientReg(theta, X, y, m, hx, lambda)

grad( 1 ) = gradient( theta, X, y, m, hx )( 1 );

for idx = 2:size( X , 2 )
  grad( idx ) = ( ( hx - y )' * X( : , idx ) / m ) + lambda * theta( idx ) / m;
endfor

end
