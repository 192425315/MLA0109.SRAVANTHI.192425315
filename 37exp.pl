% sum_up_to_n(N, Sum).

sum_up_to_n(0, 0).
sum_up_to_n(N, Sum) :-
    N > 0,
    N1 is N - 1,
    sum_up_to_n(N1, S1),
    Sum is S1 + N.

% Example:
% ?- sum_up_to_n(5, S).
% S = 15.
