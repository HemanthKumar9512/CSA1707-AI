% ---------- Knowledge Base ----------
fact(sun_is_shining).
fact(have_seeds).
fact(water_available).

% Rules written as: if conditions then conclusion
rule([sun_is_shining, have_seeds, water_available], plants_grow).
rule([plants_grow], food_available).
rule([food_available], survival).

% ---------- Forward Chaining Engine ----------
forward_chain :-
    new_fact(F),
    \+ fact(F),                % If not already known
    assertz(fact(F)),          % Add fact to database
    write('Derived: '), writeln(F),
    forward_chain.             % Continue chaining

forward_chain :- writeln('No more facts can be derived.').

% Derive new facts if all rule conditions are satisfied
new_fact(Fact) :-
    rule(Conditions, Fact),
    all_true(Conditions).

% Check if all conditions are already facts
all_true([]).
all_true([H|T]) :-
    fact(H),
    all_true(T).
