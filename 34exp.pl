% -------- FACTS --------

boy(jack).
girl(jill).

good(jill).     % Jill is good

% -------- RULES --------

% a) Every boy or girl is a child
child(X) :- boy(X).
child(X) :- girl(X).

% b) Every child gets a doll or a train or coal
% (We define 3 possible things a child may get)
gets(X, doll) :- child(X).
gets(X, train) :- child(X).
gets(X, coal) :- child(X).

% c) No boy gets any doll
gets(X, Thing) :-
    boy(X),
    Thing \= doll.

% d) No good child gets coal
gets(X, Thing) :-
    child(X),
    good(X),
    Thing \= coal.
