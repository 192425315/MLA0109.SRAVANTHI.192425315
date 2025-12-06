% isa(Child, Parent).
isa(bird, animal).
isa(sparrow, bird).
isa(eagle, bird).

% transitive closure:
is_a(X, Y) :- isa(X, Y).
is_a(X, Y) :-
    isa(X, Z),
    is_a(Z, Y).

% ?- is_a(sparrow, animal).
% yes
% ?- is_a(eagle, animal).
