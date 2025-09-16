% tower_of_hanoi.pl
% Solve Tower of Hanoi problem in Prolog

% hanoi(N, Source, Destination, Auxiliary)
% Moves N disks from Source to Destination using Auxiliary

hanoi(1, Source, Destination, _) :-
    format('Move disk from ~w to ~w~n', [Source, Destination]).

hanoi(N, Source, Destination, Auxiliary) :-
    N > 1,
    M is N - 1,
    hanoi(M, Source, Auxiliary, Destination),
    hanoi(1, Source, Destination, _),
    hanoi(M, Auxiliary, Destination, Source).
