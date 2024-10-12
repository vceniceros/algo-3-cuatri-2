# Clase 4 Polimorfismo

es una relajacion del sistema de tipos de tal manera que una referencia a una clase acepta direcciones de objetos -->
es la propiedad por la que es posible enviar mensajes sintacticamente iguales a objetos de tipos distitntos el  unico requisito para usarse de manera polimorfica seria que dos objetos distintos reacciones a un mismo mensaje

ejemplo: un gallo un pajaro y la mona gimenez cantan.

### nada esta mal a menos que no entre en el paradigma

## ventajas

- definir una interfaz que reduce el acoplamiento aumenta la reutilizacion y hace codigo facil de leer
- ocultar detalles de implementacion

## la creacion de miguel angel (la clave es crear objetos)

## Refactorizar

1. identificar y aislar comportamientos

2. utilizar los objetos

### la clave del polimorfismo es no saber que recibio la clase

no alcanza con solo crear objetos que reciban el mismo mensaje, tengo que desmantelar estos objetos para que en los nuevos mensajes se llame a los nuevos comportamientos de estos nuevos objetos

## checklist de polimorfismo

- objetos distintos que entiendan el mismo mensaje
- los comportamientos se resuelven dentro de esos objetos
- quien invoca a los objetos polimorficos no debe saber quienes son los objetos en cuestion

### para aplicar polimorfismo debo si o si utilizar en algun punto una clase abstracta (interfaz), las cosas se resuelven en tiempo de ejecucion

## pilares

1. abstraccion
2. encapsulamiento
3. polimorfismo
4. delegacion
5. herencia

el kit del polimorfismo es desmantelar el problema original, no solo mover el if a otra parte, es mover la logica buscada a las clases polimorficas en si

quien invoca los objetos no debe saber quienes son, hay que utilizar una abstraccion que referencia a los objetos polimorficos en cuestion