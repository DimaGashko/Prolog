male(oliver).
male(jake).
male(noah).
male(james).
male(jack).
male(connor).
male(liam).
male(john).
male(william).
male(jacob).

female(amelia).
female(margaret).
female(emma).
female(mary).
female(emily).
female(isabella).
female(olivia).
female(samantha).
female(sarah).
female(tracy).
female(ava).

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
parent(jack, sarah).
parent(jack, jacob).
parent(olivia, samantha).
parent(connor, samantha).

matherInLaw(M,H) :- female(M), (couple(H,K) ; couple(K,H)), parent(M,K).

matherInLawAll(M) :- matherInLaw(M, X), write(X), nl, fail.
matherInLawFirst(M) :- matherInLaw(M, X), write(X), !.