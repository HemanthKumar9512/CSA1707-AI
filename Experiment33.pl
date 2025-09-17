% ---------- Vowel Facts ----------
vowel(a).
vowel(e).
vowel(i).
vowel(o).
vowel(u).

% ---------- Rule to count vowels ----------
count_vowels([], 0).   % Empty list → 0 vowels

count_vowels([H|T], Count) :-
    vowel(H),                 % If head is a vowel
    count_vowels(T, Rest),
    Count is Rest + 1.

count_vowels([H|T], Count) :-
    \+ vowel(H),              % If head is not a vowel
    count_vowels(T, Count).
