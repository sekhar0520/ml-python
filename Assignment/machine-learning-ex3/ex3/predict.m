function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

X = [ones(m,1) X];

ZOne = Theta1 * X'; %Theta1 is 25 x 401, X is 5000 x 401
ATwo = (sigmoid(ZOne))'; %Now ATwo is 5000 x 25
ATwo = [ones(m,1) ATwo]; %Now ATwo is 5000 x 26
ZTwo = Theta2 * ATwo'; %Theta2 is 10 x 26, ATwo' is 26 x 5000
AThree = (sigmoid(ZTwo))'; %Now AThree is 5000 x 25

for i=1:size(AThree,1)
    %row = prob
   [prob pvec] = max(AThree(i,:,1),[],2);
   p(i,:) = pvec;
end


% =========================================================================


end
