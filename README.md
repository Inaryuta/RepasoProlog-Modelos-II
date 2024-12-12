# Ejercicios de repaso Prolog

Universidad Distrital Francisco José de Caldas  
Proyecto Curricular de Ingeniería de Sistemas

**Asignatura:** Modelos de Programación II  
**Profesor:** Alejandro Paolo Daza Corredor

---

## Integrantes


- Esteban Alejandro Villalba Delgadillo - 20212020064 <br> eavillalbad@udistrital.edu.co


### Descripción del proyecto

Este proyecto en Prolog contiene una serie de ejercicios de repaso diseñados para practicar conceptos fundamentales del lenguaje Prolog, como la manipulación de listas, la definición de predicados recursivos y la implementación de operaciones sobre conjuntos.

## Objetivo principal

El objetivo principal de este proyecto es desarrollar y resolver ejercicios de Prolog para afianzar conocimientos sobre manipulación de listas, definición de predicados recursivos y operaciones sobre conjuntos.

### Ejercicios resueltos


1. **Operaciones con Conjuntos: Unión**

   - Definir un predicado `union(A, B, C)` que calcule la unión de dos conjuntos `A` y `B`, y almacene el resultado en `C`.
   - Ejemplo:
     ```prolog
     ?- union([1, 2, 3], [3, 4, 5], C).
     C = [1, 2, 3, 4, 5].
     ```

2. **Operaciones con Conjuntos: Intersección**

   - Definir un predicado `interseccion(A, B, C)` que calcule la intersección de dos conjuntos `A` y `B`, y almacene el resultado en `C`.
   - Ejemplo:
     ```prolog
     ?- interseccion([1, 2, 3], [3, 4, 5], C).
     C = [3].
     ```

3. **Operaciones con Conjuntos: Diferencia**

   - Definir un predicado `diferencia(A, B, C)` que calcule la diferencia de dos conjuntos `A` y `B` (elementos de `A` que no están en `B`), y almacene el resultado en `C`.
   - Ejemplo:
     ```prolog
     ?- diferencia([1, 2, 3], [3, 4, 5], C).
     C = [1, 2].
     ```
    
4.  **Palíndromos**

   - Definir un predicado `palindromo(L)` que sea verdadero si la lista `L` es un palíndromo, es decir, se lee igual de izquierda a derecha que de derecha a izquierda.
   - Ejemplo:
     ```prolog
     ?- palindromo([a, b, b, a]).
     true.

     ?- palindromo([a, b, c]).
     false.
     ```

5. **Recursión: Factorial**

   - Definir un predicado `factorial(N, F)` que calcule el factorial de un número entero `N`.
   - Ejemplo:
     ```prolog
     ?- factorial(5, F).
     F = 120.

     ?- factorial(0, F).
     F = 1.
     ```

---

### Estructura del proyecto

- Cada ejercicio está implementado como un predicado dentro de un archivo Prolog.
- Los archivos incluyen:
  - **`OperacionesConjuntos.pl`**: Contiene los predicados `union/3`, `interseccion/3`, y `diferencia/3` para operaciones con conjuntos.
  - **`Palindromo.pl`**: Contiene el predicado `palindromo/1` para verificar palíndromos.
  - **`Factorial.pl`**: Contiene el predicado `factorial/2` para calcular el factorial de un número.

---

### Instrucciones de uso

1. Abrir el archivo correspondiente al ejercicio que se desea probar en Visual Studio Code.
2. Asegurarse de tener SWI-Prolog instalado en el sistema.
3. Abrir la terminal en Visual Studio Code y navegar a la carpeta donde se encuentra el archivo `.pl` que se desea probar.
4. Cargar el archivo en el intérprete de Prolog con el siguiente comando:
   ```prolog
   ?- [NombreDelArchivo].
