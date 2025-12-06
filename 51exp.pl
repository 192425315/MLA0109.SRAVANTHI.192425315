% animal(Name, Habitat).
animal(fish,      water).
animal(dolphin,   water).
animal(tiger,     land).
animal(elephant,  land).
animal(eagle,     air).
animal(sparrow,   air).

lives_in_water(X) :- animal(X, water).
lives_on_land(X)  :- animal(X, land).
can_fly(X)        :- animal(X, air).

% ?- lives_in_water(fish).
% ?- can_fly(eagle).
