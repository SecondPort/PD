%1- Definir la relación resto(L1,L2) donde se verifique si L2 es la lista obtenida de L1, eliminando el primer elemento%
resto([_|Y],Y).

%2- Definir la relación de pertenencia(X,L) donde se verifique si X es un elemento de la lista L.%
pertenece(X,[X|_]).
pertenece(X,[_|Y]):-pertenece(X,Y).

%3- Determinar el tamaño de una lista L.%
tamano([],0).
tamano([_|Y],T):-tamano(Y,T1),T is T1+1.

%4- Definir la relación iguales(L), que valide si todos los valores de la lista L son iguales.%
iguales([]).
iguales([_]).
iguales([X,X|Y]):-iguales([X|Y]).

%5- Definir la relación mayor(X,Y,Z) que valide en Z cual es el mayor entre X e Y.%
mayor(X,Y,X):-X>Y.
mayor(X,Y,Y):-X=<Y.

%6- Definir la relación sumLista(L,X) donde X sea la suma de los elementos de la lista L.%
sumLista([],0).
sumLista([X|Y],S):-sumLista(Y,S1),S is S1+X.

%7- Definir la relación orden(L) que verifique si la lista L esta ordenada en forma ascendente.%
orden([]).
orden([_]).
orden([X,Y|Z]):-X=<Y,orden([Y|Z]).

%8- Definir la relación listaNum(N,M,L) que devuelva L como la lista de valores desde N hasta M%
listaNum(N,N,[N]).
listaNum(N,M,[N|Y]):-N<M,N1 is N+1,listaNum(N1,M,Y).

%9- Definir una función que inserte un valor en una lista ordenada en forma ascendente de tal forma que el valor quede en el lugar que le corresponda.%
insertar(X,[],[X]).
insertar(X,[Y|Z],[X,Y|Z]):-X=<Y.
insertar(X,[Y|Z],[Y|W]):-X>Y,insertar(X,Z,W).

%10- Definir una función que indique si los valores ingresados forman un capicúa.%
ultimo_elemento([X],X).
ultimo_elemento([_|Y],X):-ultimo_elemento(Y,X).
capicua([]).
capicua([_]).
capicua([X|Y]):-ultimo_elemento(Y,X),resto(Y,Z),capicua(Z).

