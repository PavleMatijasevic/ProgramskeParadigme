stan(matijasevic, 80).
stan(petrovic, 65).
stan(obradovic, 55).

clan(matijasevic, 4).
clan(obradovic, 3).
clan(petrovic, 2).

poclanu(por, P):- stan(por, X), clan(por, Y), P is X/Y.
