man(oliver).
man(jake).
man(noah).
man(james).
man(jack).
man(connor).
man(liam).
man(john).

woman(amelia).
woman(margaret).
woman(emma).
woman(mary).
woman(emily).
woman(isabella).
woman(olivia).
woman(samantha).

couple(oliver, amelia).
couple(jake, margaret).
couple(john, emma).
couple(noah, mary).
couple(james, emily).
couple(isabella, jack).
couple(olivia, connor).

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
parent(jack, liam).
parent(olivia, samantha).
parent(connor, samantha).

mather_in_law(M, H) :- woman(M), couple(H, K), parent(M, K)