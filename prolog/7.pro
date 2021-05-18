
podeli([],[],[]).
podeli([G|R], [G|R1], L2):- G>=0, podeli(R, R1, L2), !.
podeli([G|R], L1, [G|R1]):- G<0, podeli(R, L1, R1).


dupliraj([], []).
dupliraj([G|R], [G,G|R1]):- G<0, dupliraj(R, R1), !.
dupliraj([G|R], [G|R1]):- G>=0, dupliraj(R, R1).


zameni(X, Y, [], []).
zameni(X, Y, [X|R], [Y|R1]):- zameni(X, Y, R, R1), !.
zameni(X, Y, [Y|R], [X|R1]):- zameni(X, Y, R, R1), !.
zameni(X, Y, [G|R], [G|R1]):- G\==X, G\==Y, zameni(X, Y, R, R1).

