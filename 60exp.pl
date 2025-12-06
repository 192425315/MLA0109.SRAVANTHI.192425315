% frame(Name, [slot(Attribute, Value), ...]).
frame(car, [
    slot(type,       vehicle),
    slot(wheels,     4),
    slot(fuel,       petrol),
    slot(seats,      5)
]).

frame(electric_car, [
    slot(parent,     car),
    slot(fuel,       electricity),
    slot(battery,    lithium_ion)
]).

frame(hybrid_car, [
    slot(parent,     car),
    slot(fuel,       hybrid),
    slot(battery,    lithium_ion)
]).

% Inheritance: get_slot(Object, Slot, Value)

get_slot(Object, Slot, Value) :-
    frame(Object, Slots),
    member(slot(Slot, Value), Slots).

get_slot(Object, Slot, Value) :-
    frame(Object, Slots),
    member(slot(parent, Parent), Slots),
    get_slot(Parent, Slot, Value).

% Examples:
% ?- get_slot(electric_car, wheels, W).   % inherits 4 from car
% ?- get_slot(hybrid_car, fuel, F).       % hybrid (overrides)
