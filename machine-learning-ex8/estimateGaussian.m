function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

a = sum(X);
mu  = (mu + a')/m;

%for k = 1:n
 %   for l = 1:m
  %      mu(k,1) = mu(k, 1) + X(l,k);
   % end
%end

%for i = 1:n
 %   for j = 1:m
  %      sigma(i, 1) = sigma(i, 1) + (X(j, i) - mu(i, :))^2;
   % end
%end

%mu_new = zeros(n,m);
%for s = 1:n
  %  c = mu(s,1);
 %   mu_new(s, :) = mu_new(s, :) + c;
%end

%X_new = X' - mu;
%sigma = sum(X_new'.^2);
%sigma2 = sigma2 + sigma'/m;

X_new = X';
for i = 1:n
    sigma2(i) = sum((X_new(i, :) - mu(i)).^2)/m;
end



% =============================================================


end
