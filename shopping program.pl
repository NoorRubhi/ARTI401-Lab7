basket([coffee, milk, chocolate, apple, juice]).

start :-
    basket(Items),
    menu(Items).

:- initialization(start).

menu(Items) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    do(Choice, Items).

do(d, Items) :-
    !,
    display_items(Items),
    menu(Items).

do(a, Items) :-
    !,
    write('enter the item you want to add it'), nl,
    read(New),
    add_at_end(New, Items, NewItems),
    write('The item has been added'), nl,
    menu(NewItems).

do(e, _) :-
    !,
    write('Goodbye!'), nl.
do(end_of_file, _) :-
    !.

do(_, Items) :-
    write('Invalid choice, please enter d, a or e.'), nl,
    menu(Items).

display_items([]).
display_items([H|T]) :-
    write(H), nl,
    display_items(T).

add_at_end(X, [], [X]).
add_at_end(X, [H|T], [H|T1]) :-
    add_at_end(X, T, T1).
