
almostPass([_, N, _]) :- student(_, N, [_, 'c++/4' | _] ).

% printLine :- format("|~`-t~62||~n").

% printTHead :-
%    printLine(),
%    format("| ~a~t~3+ | ~a~t~4+ | ~a~t~10+ | ~a~t~40+ |~n", ['#', group, name, grades]),
%    printLine().

% printStudent(S) :- 

print_list([],N) :- write('Total: '), write(N), !.

printList([_|T], N):- write(N), write('.'), tab(2),nl, K is N + 1, printList(T, K).

p :- setof(N, almostPass(N), S), printList(S, 1).

student(1050, adams, ['math/4', 'c++/3', 'oop/4', 'physics/3']).
student(2100, alexander, ['math/3', 'c++/2', 'oop/4', 'physics/3']).
student(3150, allen, ['math/3', 'c++/4', 'oop/3', 'physics/3']).
student(4200, anderson, ['math/3', 'c++/2', 'oop/2', 'physics/3']).
student(5250, bailey, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(1050, baker, ['math/3', 'c++/3', 'oop/4', 'physics/2']).
student(2100, barnes, ['math/4', 'c++/3', 'oop/3', 'physics/2']).
student(3150, bell, ['math/4', 'c++/3', 'oop/4', 'physics/4']).
student(4200, bennett, ['math/4', 'c++/3', 'oop/4', 'physics/3']).
student(5250, brooks, ['math/4', 'c++/3', 'oop/3', 'physics/3']).
student(1050, brown, ['math/3', 'c++/4', 'oop/4', 'physics/2']).
student(2100, bryant , ['math/4', 'c++/3', 'oop/3', 'physics/3']).
student(3150, butler, ['math/2', 'c++/3', 'oop/3', 'physics/3']).
student(4200, campbell, ['math/4', 'c++/2', 'oop/3', 'physics/4']).
student(5250, carter, ['math/3', 'c++/3', 'oop/3', 'physics/3']).
student(1050, clark, ['math/3', 'c++/4', 'oop/3', 'physics/3']).
student(2100, coleman, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(3150, collins, ['math/4', 'c++/4', 'oop/4', 'physics/3']).
student(4200, cook, ['math/3', 'c++/3', 'oop/3', 'physics/4']).
student(5250, cooper, ['math/3', 'c++/3', 'oop/4', 'physics/4']).
student(1050, cox, ['math/3', 'c++/3', 'oop/3', 'physics/4']).
student(2100, davis, ['math/3', 'c++/4', 'oop/2', 'physics/4']).
student(3150, diaz, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(4200, edwards, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(5250, evans, ['math/4', 'c++/4', 'oop/4', 'physics/3']).
student(1050, flores, ['math/4', 'c++/3', 'oop/4', 'physics/3']).
student(2100, foster, ['math/4', 'c++/4', 'oop/3', 'physics/4']).
student(3150, garcia, ['math/3', 'c++/3', 'oop/2', 'physics/3']).
student(4200, gonzales, ['math/3', 'c++/4', 'oop/4', 'physics/3']).
student(5250, gonzalez, ['math/4', 'c++/2', 'oop/3', 'physics/3']).
student(1050, gray, ['math/3', 'c++/4', 'oop/3', 'physics/4']).
student(2100, green, ['math/2', 'c++/4', 'oop/1', 'physics/4']).
student(3150, griffin , ['math/3', 'c++/4', 'oop/3', 'physics/3']).
student(4200, hall, ['math/4', 'c++/4', 'oop/3', 'physics/4']).
student(5250, harris, ['math/4', 'c++/4', 'oop/2', 'physics/4']).
student(1050, hayes, ['math/4', 'c++/3', 'oop/4', 'physics/3']).
student(2100, henderson, ['math/3', 'c++/3', 'oop/3', 'physics/2']).
student(3150, hernandez, ['math/3', 'c++/4', 'oop/4', 'physics/4']).
student(4200, hill, ['math/4', 'c++/4', 'oop/3', 'physics/3']).
student(5250, howard, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(1050, hughes, ['math/3', 'c++/3', 'oop/3', 'physics/4']).
student(2100, jackson, ['math/2', 'c++/3', 'oop/4', 'physics/4']).
student(3150, james, ['math/4', 'c++/2', 'oop/2', 'physics/4']).
student(4200, jenkins, ['math/4', 'c++/2', 'oop/3', 'physics/3']).
student(5250, johnson, ['math/2', 'c++/3', 'oop/3', 'physics/3']).
student(1050, jones, ['math/3', 'c++/4', 'oop/4', 'physics/4']).
student(2100, kelly, ['math/4', 'c++/3', 'oop/4', 'physics/2']).
student(3150, king, ['math/4', 'c++/4', 'oop/3', 'physics/4']).
student(4200, lee, ['math/3', 'c++/4', 'oop/3', 'physics/4']).
student(5250, lewis, ['math/3', 'c++/4', 'oop/4', 'physics/3']).
student(1050, long, ['math/4', 'c++/3', 'oop/3', 'physics/2']).
student(2100, lopez, ['math/2', 'c++/3', 'oop/3', 'physics/4']).
student(3150, martin, ['math/2', 'c++/4', 'oop/3', 'physics/4']).
student(4200, martinez, ['math/4', 'c++/3', 'oop/2', 'physics/3']).
student(5250, miller, ['math/4', 'c++/3', 'oop/1', 'physics/4']).
student(1050, mitchell, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(2100, moore, ['math/4', 'c++/4', 'oop/4', 'physics/3']).
student(3150, morgan, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(4200, morris, ['math/3', 'c++/2', 'oop/3', 'physics/3']).
student(5250, murphy, ['math/4', 'c++/4', 'oop/4', 'physics/4']).
student(1050, nelson, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(2100, parker, ['math/3', 'c++/4', 'oop/2', 'physics/4']).
student(3150, patterson, ['math/3', 'c++/2', 'oop/3', 'physics/2']).
student(4200, perez, ['math/4', 'c++/4', 'oop/3', 'physics/4']).
student(5250, perry, ['math/3', 'c++/4', 'oop/4', 'physics/3']).
student(1050, peterson, ['math/4', 'c++/1', 'oop/2', 'physics/2']).
student(2100, phillips, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(3150, powell, ['math/4', 'c++/4', 'oop/4', 'physics/4']).
student(4200, price, ['math/4', 'c++/4', 'oop/3', 'physics/4']).
student(5250, ramirez, ['math/2', 'c++/2', 'oop/3', 'physics/4']).
student(1050, reed, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(2100, richardson, ['math/4', 'c++/3', 'oop/4', 'physics/4']).
student(3150, rivera, ['math/3', 'c++/4', 'oop/2', 'physics/3']).
student(4200, roberts, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(5250, robinson, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(1050, rodriguez, ['math/2', 'c++/4', 'oop/3', 'physics/4']).
student(2100, rogers, ['math/4', 'c++/3', 'oop/3', 'physics/3']).
student(3150, ross, ['math/3', 'c++/2', 'oop/2', 'physics/3']).
student(4200, russell, ['math/3', 'c++/3', 'oop/3', 'physics/3']).
student(5250, sanchez, ['math/4', 'c++/3', 'oop/3', 'physics/4']).
student(1050, sanders, ['math/4', 'c++/4', 'oop/4', 'physics/3']).
student(2100, scott, ['math/4', 'c++/2', 'oop/3', 'physics/2']).
student(3150, simmons, ['math/3', 'c++/3', 'oop/4', 'physics/3']).
student(4200, smith, ['math/3', 'c++/4', 'oop/3', 'physics/3']).
student(5250, stewart, ['math/4', 'c++/4', 'oop/4', 'physics/3']).
student(1050, taylor, ['math/3', 'c++/3', 'oop/3', 'physics/3']).
student(2100, thomas, ['math/2', 'c++/3', 'oop/4', 'physics/4']).
student(3150, thompson, ['math/2', 'c++/3', 'oop/4', 'physics/3']).
student(4200, torres, ['math/4', 'c++/4', 'oop/4', 'physics/2']).
student(5250, turner, ['math/3', 'c++/3', 'oop/3', 'physics/3']).
student(1050, walker, ['math/2', 'c++/3', 'oop/3', 'physics/3']).
student(2100, ward, ['math/3', 'c++/3', 'oop/3', 'physics/1']).
student(3150, washington, ['math/3', 'c++/4', 'oop/3', 'physics/3']).
student(4200, watson, ['math/3', 'c++/3', 'oop/3', 'physics/4']).
student(5250, white, ['math/4', 'c++/4', 'oop/3', 'physics/3']).
student(1050, williams, ['math/4', 'c++/3', 'oop/4', 'physics/3']).
student(2100, wilson, ['math/4', 'c++/4', 'oop/4', 'physics/4']).
student(3150, wood, ['math/4', 'c++/4', 'oop/4', 'physics/2']).
student(4200, wright, ['math/2', 'c++/3', 'oop/3', 'physics/4']).
student(5250, young, ['math/4', 'c++/4', 'oop/3', 'physics/3']).