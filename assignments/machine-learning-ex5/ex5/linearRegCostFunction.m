function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
%disp(size(sum((X*theta) .* X(1:end, :)) / m)) 1x2
J = J + sum(((X*theta) - y) .^ 2);
J = J / (2 * m);
J = J + ((lambda / (2 * m)) * sum(theta(2:end, :) .^ 2));
grad(1) = grad(1) + (sum(((X*theta) - y) .* X(:, 1)) / m);
for i=2:length(grad),
	grad(i) = grad(i) + (sum((((X*theta) - y) .* X(:, i))) / m) + ((lambda / m) * theta(i));
end;











% =========================================================================

grad = grad(:);

end
