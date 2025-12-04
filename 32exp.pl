location(chennai, tamilnadu).
location(hyderabad, telangana).
location(vizag, andhrapradesh).
stays(ram, chennai).
stays(sita, hyderabad).
stays(arjun, vizag).
display(Person, City, State) :-
    stays(Person, City),
    location(City, State).
find_state(Person, State) :-
    stays(Person, City),
    location(City, State).
