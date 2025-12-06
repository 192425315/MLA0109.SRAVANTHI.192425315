% vehicle(Type, Wheels, PassengerCapacity, CargoCapacity).
vehicle(car,   4, 5,   medium).
vehicle(truck, 6, 2,   heavy).
vehicle(bike,  2, 2,   light).
vehicle(bus,   4, 40,  medium).

two_wheeler(V) :-
    vehicle(V, 2, _, _).

heavy_vehicle(V) :-
    vehicle(V, _, _, heavy).

passenger_vehicle(V) :-
    vehicle(V, _, P, _),
    P >= 4.

% ?- two_wheeler(V).
% ?- heavy_vehicle(V).
% ?- passenger_vehicle(V).
