% State representation:
% state(MonkeyPos, BoxPos, MonkeyOnBox, HasBanana)

% Initial state
initial(state(at_door, at_window, on_floor, no)).

% Goal state
goal(state(_, _, _, yes)).

% Actions

% 1. Monkey walks to another place
move(state(_, Box, on_floor, Has),
     walk(From, To),
     state(To, Box, on_floor, Has)).

% 2. Monkey pushes box from one place to another
move(state(Pos, Pos, on_floor, Has),
     push(Pos, To),
     state(To, To, on_floor, Has)).

% 3. Monkey climbs box
move(state(Pos, Pos, on_floor, Has),
     climb,
     state(Pos, Pos, on_box, Has)).

% 4. Monkey grabs banana (only if under banana and on box)
move(state(at_middle, at_middle, on_box, no),
     grab,
     state(at_middle, at_middle, on_box, yes)).

% Plan: sequence of moves to reach goal
plan(State, []) :- goal(State).
plan(State, [Move|Rest]) :-
    move(State, Move, NextState),
    plan(NextState, Rest).
