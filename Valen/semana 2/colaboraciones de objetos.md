# Colaboraciones de objetos

## Objeto receptor
Es el objeto que recibe un mensaje y brinda un servicio.

## Objeto cliente
Es aquel que envía un mensaje y consume un servicio.

---
### 💡 Estos pueden cambiar de roles
---

## Dependencia y delegación
Un objeto depende de otro cuando debe conocerlo para poder enviarle un mensaje. Todo objeto cliente depende de su servidor. Decimos que el cliente se delega en su receptor.

## Tipos de dependencia
- Cuando un objeto receptor se envía como argumento.
- El objeto receptor se obtiene como respuesta al mensaje enviado (envío de mensaje a otro objeto).
- El objeto cliente tiene una referencia al receptor (asociación).

## Programar por diferencia

Consiste en programar las partes distintas de dos objetos en objetos separados, y luego las partes en común de los dos objetos programarlas en uno solo y pasárselas al otro. Esto también se conoce como **herencia**.

## Herencia

Solo es aplicable en lenguajes orientados a objetos.

### Relación generalización:
- Tipo más genérico: ancestro, madre base.
- Tipo más específico: descendiente, hija, derivada.

### Otras aclaraciones:
- Toda instancia de una clase hija es una instancia de una clase padre.
- Composición: hace referencia.
- No siempre se usa herencia, aunque es muy útil.
- Si vas a heredar, asegúrate de que la clase hija genuinamente necesite **TODOS** los métodos de su clase padre, o en su defecto, que no sea problemático que una clase herede un método que no deba tener (si un vector tuviese, por ejemplo, Dijkstra entre sus métodos, tendríamos un problema).

## Redefinición
Para implementar de manera diferente la respuesta a un mensaje y modificar un comportamiento de la clase padre en la hija.

## Clases Abstractas
Son clases que no pueden tener instancias directas, pero sus descendientes sí pueden (por ejemplo, un vehículo no tendría una instancia directa, pero moto, auto, camión, etc., sí).

## Métodos abstractos
No se implementan en una clase, pero se espera que todas las clases heredadas lo hagan.

## Visibilidad
Es importante para garantizar el encapsulamiento.
### Atributos y elementos privados
Solo pueden ser utilizados por el objeto receptor en su clase.
### Atributos y elementos públicos
Pueden ser utilizados desde cualquier lugar.
### Atributos y elementos protegidos
Solo pueden ser utilizados por el objeto receptor en su clase y en las clases derivadas.

## Características de cada lenguaje
- En Smalltalk, todos los métodos son públicos y los atributos son protegidos.
- En Java, la visibilidad de los métodos y atributos es configurable.
- En Java, se puede utilizar la palabra clave `abstract`.
- Al inicializar, hay que tener cuidado con la asociación. Si inicializo una clase con variables definidas, entonces cada clase heredará exactamente las mismas variables. Por ejemplo, si inicializo una clase "mascota" con el nombre "perro", entonces al heredarla en la clase "gato", se inicializará con el nombre "perro".

