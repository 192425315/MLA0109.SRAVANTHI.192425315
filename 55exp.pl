% dish(Name, veg_or_nonveg, spicy_or_mild).
dish(paneer_butter_masala, veg, mild).
dish(veg_biryani,          veg, spicy).
dish(chicken_biryani,      nonveg, spicy).
dish(grilled_chicken,      nonveg, mild).
dish(dal_tadka,            veg, medium).
dish(fish_curry,           nonveg, spicy).

recommend(VegPref, SpicePref, Dish) :-
    dish(Dish, VegPref, SpicePref).

% Examples:
% ?- recommend(veg, spicy, Dish).
% ?- recommend(nonveg, mild, Dish).
