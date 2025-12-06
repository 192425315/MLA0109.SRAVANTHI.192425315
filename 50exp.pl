% Facts:
father(john, lisa).
mother(mary, lisa).
mother(mary, mike).
sister(lisa, mike).
father(tom, mary).
father(mike, emma).
mother(emma, olivia).
grandfather(tom, olivia).

% Generic rules:
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

grandmother(GM, C) :-
    mother(GM, P),
    parent(P, C).

grandfather(GF, C) :-
    father(GF, P),
    parent(P, C).

% a) Who is the father of Emma?
% ?- father(F, emma).

% b) Who is the sister of Mike?
% ?- sister(S, mike).

% c) Who is the grandmother of Olivia?
% ?- grandmother(GM, olivia).

% d) Is John the grandfather of Olivia?
% ?- grandfather(john, olivia).  % should be 'no'.
