% Facts: birds
bird(sparrow).
bird(crow).
bird(eagle).
bird(pigeon).
bird(ostrich).
bird(penguin).
bird(kiwi).

% Facts: birds that cannot fly
cannot_fly(ostrich).
cannot_fly(penguin).
cannot_fly(kiwi).

% Rule: A bird can fly if it is a bird and not listed in cannot_fly
can_fly(Bird) :-
    bird(Bird),
    \+ cannot_fly(Bird).
