% ---------- Facts ----------
word([p, r, o, l, o, g]).
word([p, a, t, t, e, r, n]).
word([m, a, t, c, h]).
word([l, o, g, i, c]).

% ---------- Pattern Matching Rule ----------
match(Pattern) :-
    word(W),
    W = Pattern.
