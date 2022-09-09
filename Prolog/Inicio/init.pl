esPato(lucas).

primer_elemento([X|_],X).

%hallar el ultimo elemento de la lista%
ultimo_elemento([X],X).
ultimo_elemento([_|Y],X):-ultimo_elemento(Y,X).

%hallar el elemento k de una lista%
elemento_k([X|_],0,X).
elemento_k([_|Y],K,X):-K1 is K-1,elemento_k(Y,K1,X).

