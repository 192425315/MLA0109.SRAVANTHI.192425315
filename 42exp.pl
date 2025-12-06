dob(alice, date(1990,5,10)).
dob(bob,   date(1985,3,22)).
dob(carol, date(2000,12,1)).
dob(david, date(1998,7,14)).
dob(ellen, date(2010,9,9)).

current_year(2025).

age(Name, Age) :-
    current_year(Y),
    dob(Name, date(BY,_,_)),
    Age is Y - BY.

older_than(A, B) :-
    dob(A, date(Y1,_,_)),
    dob(B, date(Y2,_,_)),
    Y1 < Y2.

younger(Person1, Person2) :-
    dob(Person1, date(Y1,_,_)),
    dob(Person2, date(Y2,_,_)),
    Y1 > Y2.

youngest(Person) :-
    dob(Person, date(Y,M,D)),
    \+ (dob(_, date(Y2,M2,D2)),
       (Y2 > Y ; (Y2 == Y, M2 > M) ; (Y2 == Y, M2 == M, D2 > D))).
