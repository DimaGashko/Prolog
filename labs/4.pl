:-dynamic employee/5, position/3.

guide :- write('* * * Prolog DB (v0.0.1) * * *'), nl, nl,
   write('Available predicates:'), nl,
   write('?- empl(Id)    :- print employee by its id'), nl,
   write('?- pos(Id)     :- print position by its id'), nl,
   write('?- emplAll()   :- print all employees'), nl,
   write('?- posAll(Id)  :- print all positions'), nl.

% Employee
empl(Id) :- employee(Id, PosId, FN, LN, Birth), 
   position(PosId, PosName, Salary),
   format('| ~a~t~5+ | ~a ~a~t~20+ | ~a~t~15+ | ~a~t~20+ | ~a~t~10+ |~n', [Id, FN, LN, Birth, PosName, Salary]).

emplDel(Id) :- (employee(Id, _, _, _, _); write('Employee not found')),
   retract(employee(Id, _, _, _, _)), !.

emplAdd(Id, PosId, FN, LN, Birth) :- (not(employee(Id, _, _, _, _)); write('Employee already exist. Use ?- emplEdit() instead'), nl, fail),
   (position(PosId, _, _); write('Position not found'), nl, fail),
   assert(employee(Id, PosId, FN, LN, Birth)),
   write('ok'), !.

emplEdit(Id, PosId, FN, LN, Birth) :- (employee(Id, _, _, _, _); write('Employee not found'), nl, fail),
   (position(PosId, _, _); write('Position not found'), nl, fail),
   emplDel(Id),
   assert(employee(Id, PosId, FN, LN, Birth)),
   write('ok'), !.

emplLine() :- format('|~`-t~71||~n').
emplAll() :- emplLine, emplHead, emplLine, empl(_), emplLine, fail.
emplHead() :- format('| ~a~t~5+ | ~a~t~20+ | ~a~t~15+ | ~a~t~20+ | ~a~t~10+ |~n', ['Id', 'Name', 'Birthday', 'Position', 'Salary']).

% Position
pos(Id) :- position(Id, Name, Salary), 
   format('| ~a~t~5+ | ~a~t~20+ | ~a~t~10+ |~n', [Id, Name, Salary]).

posDel(Id) :- (position(Id, _, _); write('Position not found')),
   retract(position(Id, _, _)), !.

posAdd(Id, Name, Salary) :- !.
posEdit(Id, Name, Salary) :- !.

posAll() :- posLine, posHead, posLine, pos(_), posLine, fail.
posHead() :- format('| ~a~t~5+ | ~a~t~20+ | ~a~t~10+ |~n', ['Id', 'Name', 'Salary']).
posLine() :- format('|~`-t~36||~n').

% employee (id, position_id, first_name, last_name, birthday)
employee(1, 7, 'Oliver', 'Smith', '6/21/1987').
employee(2, 2, 'George', 'Johnson', '12/16/1987').
employee(3, 4, 'Harry', 'Williams', '7/6/1997').
employee(4, 3, 'Noah', 'Jones', '6/9/1984').
employee(5, 4, 'Jack', 'Brown', '2/16/1992').
employee(6, 6, 'Charlie', 'Davis', '3/28/1997').
employee(7, 1, 'Leo', 'Miller', '6/6/1997').
employee(8, 6, 'Jacob', 'Wilson', '2/16/1997').
employee(9, 1, 'Freddie', 'Moore', '4/30/1980').
employee(10, 6, 'Alfie', 'Taylor', '9/25/1993').
employee(11, 5, 'Archie', 'Anderson', '10/19/1980').
employee(12, 6, 'Theo', 'Thomas', '6/28/1982').
employee(13, 5, 'Oscar', 'Jackson', '9/19/1987').
employee(14, 5, 'Arthur', 'White', '4/17/1986').
employee(15, 6, 'Thomas', 'Harris', '12/18/1992').
employee(16, 4, 'Logan', 'Martin', '10/9/1990').
employee(17, 5, 'Henry', 'Thompson', '1/16/1991').
employee(18, 4, 'Joshua', 'Garcia', '5/21/1997').
employee(19, 1, 'James', 'Martinez', '2/11/1998').
employee(20, 3, 'William', 'Robinson', '10/29/1996').
employee(21, 1, 'Max', 'Clark', '3/7/1993').
employee(22, 5, 'Isaac', 'Rodriguez', '12/6/1995').
employee(23, 1, 'Lucas', 'Lewis', '12/15/1981').
employee(24, 1, 'Ethan', 'Lee', '5/8/1991').
employee(25, 5, 'Teddy', 'Walker', '10/4/1985').
employee(26, 2, 'Finley', 'Hall', '6/17/1990').
employee(27, 2, 'Mason', 'Allen', '6/24/1990').
employee(28, 2, 'Harrison', 'Young', '8/2/1993').
employee(29, 5, 'Hunter', 'Hernandez', '4/5/1989').
employee(30, 4, 'Alexander', 'King', '3/5/1980').
employee(31, 4, 'Daniel', 'Wright', '8/29/1982').
employee(32, 4, 'Joseph', 'Lopez', '5/27/1989').
employee(33, 5, 'Tommy', 'Hill', '6/13/1984').
employee(34, 4, 'Arlo', 'Scott', '9/19/1998').
employee(35, 5, 'Reggie', 'Green', '9/5/1981').
employee(36, 6, 'Edward', 'Adams', '12/21/1985').
employee(37, 6, 'Jaxon', 'Baker', '9/18/1985').
employee(38, 2, 'Adam', 'Gonzalez', '6/10/1994').
employee(39, 4, 'Sebastian', 'Nelson', '6/10/1980').
employee(40, 2, 'Rory', 'Carter', '11/28/1990').
employee(41, 3, 'Riley', 'Mitchell', '4/23/1997').
employee(42, 5, 'Dylan', 'Perez', '2/22/1989').
employee(43, 6, 'Elijah', 'Roberts', '11/26/1993').
employee(44, 6, 'Carter', 'Turner', '1/21/1983').
employee(45, 1, 'Albie', 'Phillips', '7/23/1992').
employee(46, 6, 'Louie', 'Campbell', '11/24/1997').
employee(47, 1, 'Toby', 'Parker', '3/13/1990').
employee(48, 5, 'Benjamin', 'Evans', '11/17/1981').
employee(49, 3, 'Reuben', 'Edwards', '2/3/1980').
employee(50, 4, 'Jude', 'Collins', '9/3/1989').
employee(51, 2, 'Olivia', 'Stewart', '5/2/1981').
employee(52, 4, 'Amelia', 'Sanchez', '10/3/1990').
employee(53, 6, 'Isla', 'Morris', '11/24/1983').
employee(54, 5, 'Ava', 'Rogers', '12/10/1993').
employee(55, 3, 'Emily', 'Reed', '7/31/1997').
employee(56, 6, 'Sophia', 'Cook', '8/5/1982').
employee(57, 5, 'Grace', 'Morgan', '6/26/1988').
employee(58, 1, 'Mia', 'Bell', '12/11/1990').
employee(59, 1, 'Poppy', 'Murphy', '9/4/1984').
employee(60, 3, 'Ella', 'Bailey', '9/27/1982').
employee(61, 3, 'Lily', 'Rivera', '4/14/1986').
employee(62, 3, 'Evie', 'Cooper', '8/14/1993').
employee(63, 4, 'Isabella', 'Ross', '10/13/1986').
employee(64, 6, 'Sophie', 'Cox', '11/7/1984').
employee(65, 3, 'Ivy', 'Howard', '2/20/1992').
employee(66, 3, 'Freya', 'Ward', '8/9/1987').
employee(67, 4, 'Harper', 'Torres', '11/30/1985').
employee(68, 2, 'Willow', 'Peterson', '12/3/1996').
employee(69, 3, 'Charlotte', 'Gray', '7/29/1990').
employee(70, 4, 'Jessica', 'Ramirez', '1/9/1994').
employee(71, 5, 'Rosie', 'James', '9/12/1997').
employee(72, 5, 'Daisy', 'Watson', '4/27/1991').
employee(73, 4, 'Alice', 'Brooks', '2/17/1980').
employee(74, 3, 'Elsie', 'Kelly', '4/3/1998').
employee(75, 2, 'Sienna', 'Sanders', '10/10/1986').
employee(76, 1, 'Florence', 'Price', '10/4/1989').
employee(77, 3, 'Evelyn', 'Bennett', '11/21/1980').
employee(78, 6, 'Phoebe', 'Wood', '6/3/1987').
employee(79, 6, 'Aria', 'Barnes', '7/14/1980').
employee(80, 6, 'Ruby', 'Richardson', '7/16/1997').
employee(81, 6, 'Isabelle', 'Diaz', '9/21/1986').
employee(82, 5, 'Esme', 'Coleman', '1/30/1990').
employee(83, 5, 'Scarlett', 'Jenkins', '1/1/1990').
employee(84, 4, 'Matilda', 'Perry', '5/7/1996').
employee(85, 3, 'Sofia', 'Powell', '7/4/1983').
employee(86, 5, 'Millie', 'Long', '4/25/1993').
employee(87, 3, 'Eva', 'Patterson', '11/16/1990').
employee(88, 6, 'Layla', 'Hughes', '10/13/1995').
employee(89, 5, 'Chloe', 'Flores', '6/1/1989').
employee(90, 5, 'Luna', 'Washington', '6/12/1996').
employee(91, 6, 'Maisie', 'Butler', '1/20/1992').
employee(92, 4, 'Lucy', 'Simmons', '11/10/1992').
employee(93, 3, 'Erin', 'Foster', '8/24/1988').
employee(94, 6, 'Eliza', 'Gonzales', '2/13/1986').
employee(95, 4, 'Ellie', 'Bryant ', '1/15/1982').
employee(96, 5, 'Mila', 'Alexander', '7/6/1986').
employee(97, 3, 'Imogen', 'Russell', '8/27/1993').
employee(98, 5, 'Bella', 'Griffin ', '5/10/1995').
employee(99, 2, 'Lola', 'Henderson', '2/6/1996').
employee(100, 3, 'Molly', 'Hayes', '7/17/1996').

% position (id, name, salary)
position(1, 'Web Developer', 3000).
position(2, 'IOS Developer', 3100).
position(3, 'QA', 1500).
position(4, 'HR', 1350).
position(5, 'PM', 4500).
position(6, 'CTO', 4500).
position(7, 'CEO', 10000).