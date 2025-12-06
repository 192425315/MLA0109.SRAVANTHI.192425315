age(alice, 20).
age(bob,   16).
citizen(alice).
citizen(bob).
registered(alice).
% bob not registered

eligible_to_vote(Person) :-
    age(Person, Age),
    Age >= 18,
    citizen(Person),
    registered(Person).

% ?- eligible_to_vote(alice).  % yes
% ?- eligible_to_vote(bob).    % no
