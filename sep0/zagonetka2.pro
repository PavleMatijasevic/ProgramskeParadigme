sadrzi(X,[X|_]).
sadrzi(X,[_|R]):- sadrzi(X,R).

%% p(majka,cerka,prezime)
majke(L):- L = [
    p(petra,_,P1),
    p(milica,_,P2),
    p(lenka,_,P3),
    p(jovana,_,P4)
],
sadrzi(p(_,I1,peric),L),
sadrzi(p(_,I2,mikic),L),
sadrzi(p(_,I3,lazic),L),
sadrzi(p(_,I4,jovic),L),

sadrzi(p(I1,petra,_),L),
sadrzi(p(I2,milica,_),L),
sadrzi(p(I3,lenka,_),L),
sadrzi(p(I4,jovana,_),L),




not(I1 == petra),
not(I2 == milica),
not(I3 == lenka),
not(I4 == jovana),


not(P4 == jovic),
not(P3 == lazic),
not(P2 == mikic),
not(P1 == peric).















