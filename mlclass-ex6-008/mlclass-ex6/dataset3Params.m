function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
C_array = sigma_array = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

min_predict_error = 1;

for c_idx = 1:length(C_array)
  for sigma_idx = 1:length(sigma_array)
    tmp_model = svmTrain(X, y, C_array(c_idx), @(x1, x2) gaussianKernel(x1, x2, sigma_array(sigma_idx)));
    tmp_predictions = svmPredict(tmp_model, Xval);
    tmp_predict_error = mean(double(tmp_predictions ~= yval));
    if min_predict_error > tmp_predict_error
       min_predict_error = tmp_predict_error;
       C = C_array(c_idx);
       sigma = sigma_array(sigma_idx);
    endif
  endfor
endfor

% =========================================================================

end
