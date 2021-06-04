rafinerija(Vars):-
Vars = [D, B],
D :: 1..325000,
B :: 150000..300000,

D + B #=< 600000,
D #>=  B*2,

labeling([maximize(2*B+D)] ,Vars),
Zarada is 2*B+D,
write('Maksimalna zarada je '), write(Zarada), nl,
write('benzina: '), write(B), write(' ,dizela: '), write(D), nl.
