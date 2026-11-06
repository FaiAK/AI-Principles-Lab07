display_items([]).

display_items([Item|Rest]) :-
    write(Item),
    nl,
    display_items(Rest).
shopping :-
    menu([milk, bread, eggs, rice, apples]).

menu(Basket) :-
    write('d - Display items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    read(Choice),
    action(Choice, Basket).

action(d, Basket) :-
    display_items(Basket),
    menu(Basket).

action(a, Basket) :-
    write('Enter an item: '),
    read(Item),
    menu([Item|Basket]).

action(e, _).
