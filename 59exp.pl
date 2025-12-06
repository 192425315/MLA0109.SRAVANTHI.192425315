% argument(Name).
argument(a1).
argument(a2).
argument(a3).

% attacks(Attacker, Attacked).
attacks(a1, a2).
attacks(a2, a1).
attacks(a3, a2).

% Very simple acceptance: accepted if not attacked by any argument
% (no defense considered, just basic).
accepted(A) :-
    argument(A),
    \+ attacks(_, A).

% ?- accepted(A).
% Here only arguments with no incoming attack will be accepted.
