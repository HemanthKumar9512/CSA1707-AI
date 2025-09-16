% Gender facts
male(john).
male(mike).
male(david).
male(raju).

female(linda).
female(susan).
female(anu).
female(kavya).

% Parent facts
parent(john, mike).
parent(linda, mike).

parent(john, susan).
parent(linda, susan).

parent(mike, anu).
parent(raju, anu).

parent(susan, david).
parent(kavya, david).

% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

grandfather(X, Y) :-
    grandparent(X, Y),
    male(X).

grandmother(X, Y) :-
    grandparent(X, Y),
    female(X).
