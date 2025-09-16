    % person_db.pl
% A simple database of people with Name and Date of Birth (DOB)

% Facts: person(Name, dob(Day, Month, Year))

person('Alice', '10-may-2000').
person('Bob', '25-december-1998').
person('Charlie', '5-july-2005').
person('Diana', '15-january-1999').

% Rule: find DOB by name
get_dob(Name, DOB) :-
    person(Name, DOB).
