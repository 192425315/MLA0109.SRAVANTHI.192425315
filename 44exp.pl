% disease(Name).
disease(diabetes).
disease(hypertension).
disease(obesity).

diet(diabetes,    'low sugar, high fiber, avoid sweets').
diet(hypertension,'low salt, more fruits and vegetables').
diet(obesity,     'low calorie, high protein, regular exercise').

recommend_diet(Disease, Diet) :-
    diet(Disease, Diet).

% ?- recommend_diet(diabetes, D).
