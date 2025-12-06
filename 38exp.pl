% ---------------------------
% 4-Queens Problem in Prolog
% ---------------------------

% Main predicate that returns one solution (or more on backtracking)
solve_4queens(Qs) :-
    Qs = [Q1, Q2, Q3, Q4],
    permutation([1,2,3,4], Qs),
    safe(Q1, Q2, Q3, Q4).

% Check all pairs of queens for attacks
safe(Q1, Q2, Q3, Q4) :-
    no_attack(1, Q1, 2, Q2),
    no_attack(1, Q1, 3, Q3),
    no_attack(1, Q1, 4, Q4),
    no_attack(2, Q2, 3, Q3),
    no_attack(2, Q2, 4, Q4),
    no_attack(3, Q3, 4, Q4).

% No attack if columns differ and diagonals differ
no_attack(R1, C1, R2, C2) :-
    C1 =\= C2,
    abs(C1 - C2) =\= abs(R1 - R2).

% Built-in utility: permutation/2
permutation([], []).
permutation(List, [Elem|Perm]) :-
    select(Elem, List, Rest),
    permutation(Rest, Perm).
