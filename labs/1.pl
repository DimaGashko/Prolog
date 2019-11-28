man(oliver).
man(jake).
man(noah).
man(james).
man(jack).
man(connor).
man(liam).
man(john).
man(william).
man(jacob).

woman(amelia).
woman(margaret).
woman(emma).
woman(mary).
woman(emily).
woman(isabella).
woman(olivia).
woman(samantha).
woman(sarah).
woman(tracy).
woman(ava).

couple(oliver, amelia).
couple(jake, margaret).
couple(john, emma).
couple(noah, mary).
couple(james, emily).
couple(isabella, jack).
couple(olivia, connor).
couple(william, sarah).
couple(liam, tracy).
couple(jacob, ava).

parent(oliver, noah).
parent(amelia, noah).
parent(jake, mary).
parent(margaret, mary).
parent(john, isabella).
parent(emma, isabella).
parent(noah, jack).
parent(noah, olivia).
parent(mary, jack).
parent(mary, olivia).
parent(james, connor).
parent(emily, connor).
parent(isabella, liam).
parent(isabella, sarah).
parent(isabella, jacob).
parent(jack, liam).
parent(olivia, samantha).
parent(connor, samantha).

matherInLaw(M,H) :- woman(M), (couple(H,K) ; couple(K,H)), parent(M,K).

matherInLawAll(M) :- matherInLaw(M, X), write(X), nl, fail.
matherInLawFirst(M) :- matherInLaw(M, X), write(X), !.