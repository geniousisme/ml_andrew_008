function grad = gradient(theta, X, y, m, hx)

for idx = 1:size( X , 2 )
  grad( idx ) = ( hx - y )' * X( : , idx ) / m;
endfor

end
