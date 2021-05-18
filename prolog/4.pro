
maksimum(A,B,M):- A>=B, M is A.
maksimum(A,B,M):- A<B, M is B.

suma(1, 1). 
suma(N, S):- N>1, N1 is N-1, suma(N1, S1), S is S1+N.

sumaParnih(2,2).
sumaParnih(N, S):- N>2, N1 is N-2, sumaParnih(N1, S1), S is S1+N.

proizvod(1, 1).
proizvod(N, S):- N>1, N1 is N-1, proizvod(N1, S1), S is S1*N.


proizvodNeparnih(3,3).
proizvodNeparnih(N, S):- N>3, N1 is N-2, proizvodNeparnih(N1, S1), S is S1*N.

cifra(0, nula).
cifra(1, jedan).
cifra(2, dva).
cifra(3, tri).
cifra(4, cetiri).
cifra(5, pet).
cifra(6, sest).
cifra(7, sedam).
cifra(8, osam).
cifra(9, devet).



cifre(N):- N<1, !.

cifre(N):- N>1, N<10, cifra(N,M), write(M), nl, !.

cifre(N):- N1 is (N // 10), cifre(N1), N2 is (N mod 10), cifra(N2, C), write(C), nl.
