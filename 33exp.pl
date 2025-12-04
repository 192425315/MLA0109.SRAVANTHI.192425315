/* PARENT FACTS */
parent(john, bob).
parent(mary, bob).

parent(john, sue).
parent(mary, sue).

parent(bob, bill).
parent(sue, ann).


/* -------- RULES -------- */

/* Father: any parent */
father(F, C) :- parent(F, C).

/* Mother: any parent */
mother(M, C) :- parent(M, C).

/* Brother: same parent, different child */
brother(B, X) :-
    parent(P, B),
    parent(P, X),
    B \= X.

/* Sister: same parent, different child */
sister(S, X) :-
    parent(P, S),
    parent(P, X),
    S \= X.

/* Grandchild */
grandchild(GC, GP) :-
    parent(GP, P),
    parent(P, GC).

/* Grandfather */
grandfather(GF, GC) :-
    parent(GF, P),
    parent(P, GC).

/* Uncle = brother of a parent */
uncle(U, C) :-
    parent(P, C),
    brother(U, P).
