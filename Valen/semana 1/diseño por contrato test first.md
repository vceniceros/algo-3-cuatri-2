# Diseño por contrato y Test first

## Clase:

Conjuntos de objetos que, por lo menos, tiene en el mismo comportamiento.

## Métodos:

Son funciones que se encargan de la implementación de los comportamientos.

## Atributos:

Son variables que se encargan de almacenar aspectos del estado de ese objeto.

## Tipado dinámico vs tipado estático.

El tipado dinámico es mas flexible pero existen errores que en el solido son mas sencillos de resolver o de plano no existe.

## Diseño por contrato:

Es una forma de especificar el comportamiento de un objeto, pensándolo como que un objeto brinda servicios a sus clientes cumpliendo un contrato.

### 4 elementos:

- Firmas de métodos:

         el nombre y parámetros del objeto me dicen que hace y que recibe

- Precondiciones:
    
      son las condiciones que se necesitan para que la función se ejecute correctamente, si no se cumple, salen las excepciones.
    
- Postcondiciones:

         es lo que pasa después de ejecutarse, el estado en el que queda el objeto post ejecución, para             corroborarlas se utilizan las pruebas unitarias (deberíamos tener al menos una prueba unitaria por cada post condición).

- Invariantes:

Son condiciones que debe cumplir el objeto durante toda su existencia.

## Procedimiento basico:



Test First (el desarrollo empieza por la prueba):



Cuando empezas por la prueba minimizas el condicionamiento del autor, primero que las pruebas se convierten en especificaciones de lo que uno quiere que haga su objeto y segundo evitas crear métodos de mas (cada prueba tiene que tener su método, si no se te ocurre una prueba es porque el método sobraba). 

### Ventajas:

- permite independizarse del factor humano.
- menor subjetividad y variabilidad en el tiempo (mismo resultado el lunes por la tarde que el domingo por la mañana)
- Facilita la repetición de las mismas pruebas.
- Sirven como control de calidad.

## Herramientas xUnit

Para facilitar la construccion de pruebas automaticas.

- SUnit
- JUnit
- NUnit

vienen integradas al IDE

## Paradigmas OO y componentes

Componentes en POO = Objetos

Condicion 1: encapsulamiento

Condicion 2: contratos

Encapsulamiento + Contratos = Abstraccion

## Claves:

1. los objetos se implementan en base a un modelo cliente-proveedor
2. De las precondiciones deducimos las excepciones
3. De las postcondiciones deducimos las pruebas unitarias
4. Las pruebas unitarias guían la implementación de a incrementos pequeños
5. Hoy OO sirve para manejar la complejidad y auxiliar en la abstracción