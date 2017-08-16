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

X_normalized = [];
mu = [];
sigma = [];
for iter = 1:size(X_norm, 2)

mu = [mu mean(X_norm(:,iter))];
sigma = [sigma std(X_norm(:,iter))];
feature = (X_norm(:,iter) - mean(X_norm(:,iter))) / std(X_norm(:,iter));
%feature = (X_norm(:,2) - mean(X_norm(:,2))) / std(X_norm(:,2));
%feature1 = feature1 / std(X_norm(:,1));
%feature1;
%disp(X_norm(:,2));
%fprintf(' mean %f \n std %f \n', mean(X_norm(:,1)), std(X_norm(:,1)));
%disp('feature1\n');
%disp(feature1);
%disp('feature2\n');
%disp(feature2);
X_normalized = [X_normalized feature];
end
%disp(X_normalized);
X_norm = X_normalized;
%disp(mu);
%disp(size(mu));
%disp(sigma);
% ============================================================

end
