function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

%size(X_norm)
%fprintf('size(X) is %0.f \n',size(X))
%fprintf('sum(X) is %0.f\n', sum(X))
%fprintf('sum(X)/size(X,1) is %0.f\n', sum(X)/size(X,1))
%temp = sum(X)/size(X,1)
%sumup = sum(X)/47



mu = mean(X);
sigma = std(X);
X_norm = (X-mu)./sigma; % I tried (X-mu)/ sigma first and did not work

%sum(X)

%size(mu)
%size(sigma)
%size(X-mu)
%size(X_norm)



% ============================================================

end