male(john).
female(mary).
female(susan).

has_child(john, anna).
has_child(mary, anna).
has_child(susan, bob).

father(X, Y) :- male(X), has_child(X, Y).
mother(X, Y) :- female(X), has_child(X, Y).
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

% ?- parent(john, anna).
% ?- father(john, anna).
% ?- mother(mary, anna).
