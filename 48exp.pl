% ----------------------------------------------------
% PLANETS DATABASE (planet/6)
% planet(Name, PositionFromSun, DistanceAU, MassEarths,
%        OrbitalPeriodYears, DayLengthHours)
% ----------------------------------------------------

planet(mercury, 1, 0.39, 0.055, 0.24, 1407.6).
planet(venus,   2, 0.72, 0.815, 0.62, 5832).
planet(earth,   3, 1.00, 1.00, 1.00, 24).
planet(mars,    4, 1.52, 0.107, 1.88, 24.6).
planet(jupiter, 5, 5.20, 317.8, 11.86, 9.9).
planet(saturn,  6, 9.54, 95.2, 29.46, 10.7).

% ----------------------------------------------------
% (c) DISTANCE BETWEEN TWO PLANETS
% ----------------------------------------------------
distance_between(P1, P2, D) :-
    planet(P1, _, Dist1, _, _, _),
    planet(P2, _, Dist2, _, _, _),
    D is abs(Dist1 - Dist2).

% ----------------------------------------------------
% (d) PLANETS CLOSER THAN EARTH
% ----------------------------------------------------
closer_than_earth(P) :-
    planet(earth, _, EarthDist, _, _, _),
    planet(P, _, Dist, _, _, _),
    Dist < EarthDist.
