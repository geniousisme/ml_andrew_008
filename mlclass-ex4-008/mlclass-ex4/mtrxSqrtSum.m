function summation = mtrxSqrtSum(matrix)
  % in this function, we return the summation of square of all the elements in a 2-D matrix
  summation = sum(sum(matrix .^ 2));
end