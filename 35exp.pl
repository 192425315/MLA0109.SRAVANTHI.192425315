% Convert Centigrade to Fahrenheit
c_to_f(C, F) :-
    F is C * 9 / 5 + 32.

% Check if temperature is below freezing (0°C)
below_freezing(C) :-
    C =< 0.
