deleteElement(_, [], []).
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).