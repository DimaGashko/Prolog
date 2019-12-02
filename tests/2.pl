
p_stud(X) :- student(_, X, [_, 'mathematics/4' | _] ).

good_math(L) :- setof(X, p_stud(X), L).

print_list([],N) :- write('Всього '),write(N),write(' студентів'), !.

print_list([X|T], N):- write(N), write('.'), tab(2), write(X),nl, K is N + 1, print_list(T, K).

p :- good_math(L),print_list(L,1).

student(4151, petrov, ['physics/5', 'mathematics/4', 'c++/5', 'oop/3']).
student(4152, veselkov, ['physics/4', 'mathematics/3', 'c++/4', 'oop/5']).
