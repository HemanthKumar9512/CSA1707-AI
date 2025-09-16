% planet_db.pl
% A simple Prolog database of planets

% Facts: planet(Name, OrderFromSun, DistanceFromSun, Diameter, Moons).
% DistanceFromSun = million km
% Diameter = km

planet(mercury, 1, 57.9, 4879, 0).
planet(venus,   2, 108.2, 12104, 0).
planet(earth,   3, 149.6, 12742, 1).
planet(mars,    4, 227.9, 6779, 2).
planet(jupiter, 5, 778.3, 139820, 79).
planet(saturn,  6, 1427, 116460, 83).
planet(uranus,  7, 2871, 50724, 27).
planet(neptune, 8, 4495, 49244, 14).

% -----------------------------
% Rules
% -----------------------------

% Find which planet is closest to the Sun
closest_planet(Planet) :-
    planet(Planet, 1, _, _, _).

% Find which planet is farthest from the Sun
farthest_planet(Planet) :-
    planet(Planet, 8, _, _, _).

% Find planet by number of moons
planet_with_moons(Moons, Planet) :-
    planet(Planet, _, _, _, Moons).

% Find planets bigger than Earth
bigger_than_earth(Planet) :-
    planet(earth, _, _, EarthDiameter, _),
    planet(Planet, _, _, Diameter, _),
    Diameter > EarthDiameter.
