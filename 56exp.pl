% trust(From, To, Score).
trust(a1, a2, 0.8).
trust(a2, a3, 0.7).
trust(a1, a3, 0.4).

% Reputation propagation: indirect trust via intermediate agent
indirect_trust(A, C, Score) :-
    trust(A, B, S1),
    trust(B, C, S2),
    Score is S1 * S2.

% Overall reputation could be direct or indirect:
reputation(A, B, Score) :-
    trust(A, B, Score).

reputation(A, C, Score) :-
    indirect_trust(A, C, Score).

% ?- reputation(a1, a3, S).
