# pilares de la POO

estas son las maximas inquebrantables a la hora de llevar a cabo POO y son la guia por la cual uno debe llevar a cabo el paradigma sin morir en el intento

## Encapsulamiento

Es un mecanismo para ocultar detalles de implementacion de una clase al mundo exterior y proporcionar una interfaz publublica para acceder y modificar el estado interno de un objeto, se divide en dos parte.

### ocultamiento de datos

consiste en que los datos de una clase sean atributos privados los cuales solo pueden ser accedidos y modificados mediante metodos de la clase

### ocultamiento de informacion

consiste en brindarle a la clase metodos propios que le permitan brindar a otras clase su informacion correspondiente y poder modificarlas sin necesidad de que otra clase actue sobre estos directamente

en definitiva encapsulamiento consiste en darle a una clase ciertas resposabilidades propias de la misma determinando exactamente que tiene como tarea esta misma evitando asi que otras clases puedan ejecutar dichas responsabilidades por fuera de esta (encapsulamiento viene de encapsular comportamientos).

## Abstraccion

consiste en crear clases abstractas las cuales tanto ellas mismas como sus metodos no puedan ser instanciados directamente, sino que sus comportamientos sean aplicados a otras clases mediante interfaces y/o herencia, esto a nivel practico, a nivel teorico vendria a ser la capacidad de ignorar detalles de implementacion de una clase basandote en sus comportamientos, Es decir, se centra en qué hace un objeto sin preocuparse por cómo lo hace. De esta manera, se simplifican los modelos al enfocarse en lo que es relevante desde la perspectiva del usuario o programador.

## Herencia

consite en transmitir mediante la herencia comportamientos de una clase padre a sus hijas esto permite estandarizar en multiples clases los estados y comportamientos de las mismas evitando repetir codigo.

### cosas a tener en cuenta a la hora de heredar

- se debe cumplir la relacion "es un"
- la herencia es una relacion muy rigida
- la clases hijas deben adherir a la totalidad del contrato de la clase madre si eso no se comple o se cumple parcialmente no sirve, no se puede aplicar herencia

## Delegacion

consiste en la propiedad de las clases de delegar responsabilidades a otras clases, esto permite que comportamientos de una clase puedan depender del resultado de procesos realizados en otras aumentando el acoplamiento por un lado pero por el otro generando una mejor colaboracion entre clases.

## Polimorfismo

es la propiedad por la cualas varias clases pueden responder a un mismo mensaje lo que permite poder eliminar los "if"

### ventajas

- definir una interfaz que reduce el acoplamiento aumenta la reutilizacion y hace codigo facil de leer
- ocultar detalles de implementacion

la clave del polimorfismo es no saber que recibio la clase, no alcanza con solo crear objetos que reciban el mismo mensaje, tengo que desmantelar estos objetos para que en los nuevos mensajes se llame a los nuevos comportamientos de estos nuevos objetos

## checklist de polimorfismo

- objetos distintos que entiendan el mismo mensaje
- los comportamientos se resuelven dentro de esos objetos
- quien invoca a los objetos polimorficos no debe saber quienes son los objetos en cuestion