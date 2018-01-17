%% Simulate the sum of rolling 6 dice 1e6 times.

numSims = 1e6;
for i = 1:numSims
    
    % Create 6 random integers in the range [1, 6]
    dice = randi([1, 6], 1, 6);
    
    % Sum the six integers and store the result
    diceSum(i) = sum(dice);
end

histogram(diceSum);