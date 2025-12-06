student(alice).
student(bob).

teacher(dr_smith).
teacher(dr_john).

subject(cs101, 'Artificial Intelligence').
subject(cs102, 'Data Structures').

teaches(dr_smith, cs101).
teaches(dr_john, cs102).
takes(alice, cs101).
takes(bob, cs102).

% Create questions like: "____ teaches cs101."
question(q1, '____ teaches cs101.') :-
    teaches(_, cs101).

question(q2, 'Alice takes ____.') :-
    takes(alice, _).

question(q3, '____ takes cs102.') :-
    takes(_, cs102).

% ?- question(Id, Q).
