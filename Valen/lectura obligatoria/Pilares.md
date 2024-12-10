# Pilares de la POO

Estas son las máximas inquebrantables a la hora de llevar a cabo la Programación Orientada a Objetos (POO) y son la guía por la cual uno debe seguir el paradigma sin morir en el intento.

## Encapsulamiento

Es un mecanismo para ocultar los detalles de implementación de una clase al mundo exterior y proporcionar una interfaz pública para acceder y modificar el estado interno de un objeto. Se divide en dos partes:

### Ocultamiento de datos

Consiste en que los datos de una clase sean atributos privados, los cuales solo pueden ser accedidos y modificados mediante métodos de la clase.

### Ocultamiento de información

Consiste en brindarle a la clase métodos propios que le permitan proporcionar a otras clases la información correspondiente y permitir su modificación sin que otra clase actúe directamente sobre estos datos.

En definitiva, el encapsulamiento consiste en darle a una clase ciertas responsabilidades propias, determinando exactamente qué tareas le corresponden a esta clase y evitando así que otras clases ejecuten dichas responsabilidades desde afuera. (Encapsulamiento proviene de "encapsular comportamientos").

## Abstracción

Es la manera en la se conectan el dominio del problema con el dominio de la solucion, nosotros adaptamos objetos de la vida real en antributos y comportamientos en nuestro codigo donde la abstraccion viene a ser los elementos y comportamientos de la vida real que nosotros concideramos necesarios en nuestro modelo, la abstraccion es un modelo de un objeto o fenomeno de la vida real limitado en un contexto especifico, representando todo lo que nosotros concideramos importante para nuestra implementacion

## Herencia

Consiste en transmitir mediante la herencia los comportamientos de una clase padre a sus hijas. Esto permite estandarizar estados y comportamientos en múltiples clases, evitando la repetición de código.

### Cosas a tener en cuenta al heredar

- Se debe cumplir la relación "es un".
- La herencia es una relación muy rígida.
- Las clases hijas deben adherirse completamente al contrato de la clase madre; si esto no se cumple o se cumple parcialmente, la herencia no es adecuada.

## Delegación

Consiste en la propiedad de las clases de delegar responsabilidades a otras clases. Esto permite que los comportamientos de una clase puedan depender de los resultados de procesos realizados en otras, lo cual aumenta el acoplamiento, pero al mismo tiempo genera una mejor colaboración entre clases.

## Polimorfismo

Es la propiedad por la cual varias clases pueden responder a un mismo mensaje, permitiendo así eliminar el uso de "if".

### Ventajas

- Definir una interfaz que reduce el acoplamiento, aumenta la reutilización y hace el código fácil de leer.
- Ocultar detalles de implementación.

La clave del polimorfismo es no saber qué clase específica se ha recibido. No basta con crear objetos que reciban el mismo mensaje; es necesario que los objetos nuevos respondan a los nuevos comportamientos según el mensaje recibido.

## Checklist de polimorfismo

- Objetos distintos que entienden el mismo mensaje.
- Los comportamientos se resuelven dentro de esos objetos.
- Quien invoca a los objetos polimórficos no debe saber quiénes son los objetos en cuestión.
