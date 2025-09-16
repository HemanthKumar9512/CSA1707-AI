% ---------- Knowledge Base ----------
fact(sun_is_shining).
fact(have_seeds).
fact(water_available).

% Rules in backward chaining style
rule(plants_grow, [sun_is_shining, have_seeds, water_available]).
rule(food_available, [plants_grow]).
rule(survival, [food_available]).

% ---------- Backward Chaining Engine ----------
prove(Goal) :-
    fact(Goal), !.                          % If fact is known, succeed

prove(Goal) :-
    rule(Goal, SubGoals),                   % If Goal has rules
    prove_all(SubGoals).                    % Prove all sub-goals

% Prove all sub-goals
prove_all([]).                              % Empty list = success
prove_all([H|T]) :-
    prove(H),                               % Prove first goal
    prove_all(T).                           % Then prove rest
