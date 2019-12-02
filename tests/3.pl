last_el([], _).
last_el([X], X).
last_el([_|T], X) :- last_el(T, X).