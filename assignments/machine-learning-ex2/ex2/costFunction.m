function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%
for i=1:m,
	J = J + ((-y(i) * log(sigmoid(X(i, :) * theta))) - ((1 - y(i)) * log(1 - sigmoid(X(i, :) * theta))));
	end;
%J = J + ((-y * log(sigmoid(X * theta))) - ((1 - y) * log(1 - sigmoid(X * theta))));
J = J / m;
temp1 = 0;temp2 = 0; temp3 = 0;
for i = 1:m,
	temp1 = temp1 + ((sigmoid(X(i, :) * theta) - y(i)) * X(i, 1));
	temp2 = temp2 + ((sigmoid(X(i, :) * theta) - y(i)) * X(i, 2));
	temp3 = temp3 + ((sigmoid(X(i, :) * theta) - y(i)) * X(i, 3));
	end;
temp = [temp1
	temp2
	temp3];
grad = temp / m;



% =============================================================

end
%for j=1:length(theta),
%	term = 0; 
%	for i=1:m,
%		term = term + ((sigmoid(X(i) * theta) - y(i)) * X(i, j));
%	end;
%	grad(j) = grad(j) + term / m;
%end;