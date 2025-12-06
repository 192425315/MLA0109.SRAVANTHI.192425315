symptom(fever).
symptom(cough).
symptom(cold).
symptom(headache).
symptom(chills).

disease(malaria) :-
    has(fever),
    has(chills),
    has(headache).

disease(typhoid) :-
    has(fever),
    has(headache),
    has(body_pain).

disease(flu) :-
    has(fever),
    has(cough),
    has(cold).

:- dynamic has/1.
