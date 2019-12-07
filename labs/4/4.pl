:-dynamic employee/5, position/3, test/1.

guide :- write('* * * Prolog DB (v0.0.1) * * *'), nl, nl,
   write('Available predicates:'), nl,
   write('?- empl(Id)'), nl,
   write('?- emplAll()'), nl,
   write('?- emplAdd(Id, PosId, FN, LN, Birthday)'), nl,
   write('?- emplEdit(Id, PosId, FM, LN, Birthday)'), nl,
   write('?- emplDel(Id)'), nl,
   write('?- pos(Id)'), nl,
   write('?- posAll()'), nl,
   write('?- posAdd(Id, Name, Salary) '), nl,
   write('?- posEdit(Id, Name, Salary)'), nl,
   write('?- posDel(Id)'), nl,
   write('- - - - - -'), nl,
   write('?- guide()'), nl.

% Reading
r :- see('db.txt'), read(X), readEmplTable(X), seen().

readEmplTable(end_of_file) :- write('End Of file. Done!'), !.
readEmplTable(X) :- write(X), nl, read(Y), readEmplTable(Y).

% Employee
empl(Id) :- employee(Id, PosId, FN, LN, Birth), 
   position(PosId, PosName, Salary),
   format('| ~a~t~5+ | ~a ~a~t~20+ | ~a~t~15+ | ~a~t~20+ | ~a~t~10+ |~n', [Id, FN, LN, Birth, PosName, Salary]).

emplDel(Id) :- (employee(Id, _, _, _, _); write('Employee not found')),
   retract(employee(Id, _, _, _, _)), !.

emplAdd(Id, PosId, FN, LN, Birth) :- (not(employee(Id, _, _, _, _)); write('Employee already exist. Use ?- emplEdit() instead'), nl, fail),
   (position(PosId, _, _); write('Position not found'), nl, fail),
   assert(employee(Id, PosId, FN, LN, Birth)),
   write('Done!'), !.

emplEdit(Id, PosId, FN, LN, Birth) :- (employee(Id, _, _, _, _); write('Employee not found'), nl, fail),
   (position(PosId, _, _); write('Position not found'), nl, fail),
   emplDel(Id),
   assert(employee(Id, PosId, FN, LN, Birth)),
   write('Done!'), !.

emplLine() :- format('|~`-t~71||~n').
emplAll() :- emplLine, emplHead, emplLine, empl(_), emplLine, fail.
emplHead() :- format('| ~a~t~5+ | ~a~t~20+ | ~a~t~15+ | ~a~t~20+ | ~a~t~10+ |~n', ['Id', 'Name', 'Birthday', 'Position', 'Salary']).

% Position
pos(Id) :- position(Id, Name, Salary), 
   format('| ~a~t~5+ | ~a~t~20+ | ~a~t~10+ |~n', [Id, Name, Salary]).

posDel(Id) :- (position(Id, _, _); write('Position not found')),
   retract(position(Id, _, _)), !.

posAdd(Id, Name, Salary) :- (not(position(Id, _, _)); write('Position already exist. Use ?- posEdit() instead'), nl, fail),
   assert(position(Id, Name, Salary)),
   write('Done!'), !.

posEdit(Id, Name, Salary) :- (position(Id, _, _); write('Position not found'), nl, fail),
   posDel(Id),
   assert(position(Id, Name, Salary)),
   write('Done!'), !.

posAll() :- posLine, posHead, posLine, pos(_), posLine, fail.
posHead() :- format('| ~a~t~5+ | ~a~t~20+ | ~a~t~10+ |~n', ['Id', 'Name', 'Salary']).
posLine() :- format('|~`-t~36||~n').