% Symptoms:
has_symptom(fever).
has_symptom(cough).
has_symptom(cold).
has_symptom(headache).
has_symptom(body_pain).

disease(malaria) :-
    has_symptom(fever),
    has_symptom(chills).

disease(typhoid) :-
    has_symptom(fever),
    has_symptom(headache),
    has_symptom(body_pain).

disease(flu) :-
    has_symptom(fever),
    has_symptom(cough),
    has_symptom(cold).

% Example query (after asserting has_symptom/1 for a patient):
% ?- disease(D).
