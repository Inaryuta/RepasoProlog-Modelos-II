% Predicado para la unión de dos conjuntos A y B, almacenando el resultado en C
union([], B, B).                  % Caso base: unión de [] con B es B
union([H|T], B, C) :-             % Caso recursivo
    member(H, B),                 % Si H ya está en B no se agrega
    union(T, B, C).
union([H|T], B, [H|C]) :-         % Si H no está en B se agrega
    \+ member(H, B),              % Comprobamos que H no esté en B
    union(T, B, C).

% Predicado para la intersección de dos conjuntos A y B, almacenando el resultado en C
interseccion([], _, []).           % Caso base: la intersección de [] con cualquier conjunto es []
interseccion([H|T], B, [H|C]) :-   % Si H está en B se agrega
    member(H, B), 
    interseccion(T, B, C).
interseccion([H|T], B, C) :-       % Si H no está en B no se agrega
    \+ member(H, B),
    interseccion(T, B, C).

% Predicado para la diferencia de dos conjuntos A y B, almacenando el resultado en C
diferencia([], _, []).               % Caso base: la diferencia de [] con cualquier conjunto es []
diferencia([H|T], B, [H|C]) :-       % Si H no está en B se agrega
    \+ member(H, B),
    diferencia(T, B, C).
diferencia([H|T], B, C) :-           % Si H está en B no se agrega
    member(H, B),
    diferencia(T, B, C).
