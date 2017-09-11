function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


    tempVector = ( X' * ((X*theta) - y)); 
    tempVector = sum(tempVector,2);

    % printf ("%f %f\n", tempVector(1,1), tempVector(2,1));

    constant = alpha/m; 
    tempVector = tempVector*constant; 
    theta = theta - tempVector;  

    % printf ("%f %f\n", theta(1,1), theta(2,1));







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
