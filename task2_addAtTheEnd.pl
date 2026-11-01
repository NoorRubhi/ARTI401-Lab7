add_at_the_end(X, List, Result) :-
    append(List, [X], Result).
add_at_the_end2(X, [], [X]).
add_at_the_end2(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end2(X, Tail, Result).
