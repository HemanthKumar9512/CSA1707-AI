% sum( N , Result ) :- Result is sum of numbers from 1 to N.

% Base case: sum of first 0 numbers is 0
sum(0, 0).

% Recursive case:
% sum(N, Result) = N + sum(N-1, SmallerResult)
sum(N, Result) :-
    N > 0,
    N1 is N - 1,
    sum(N1, Temp),
    Result is Temp + N.
