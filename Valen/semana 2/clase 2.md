# clase 2 semana 2

## POO

las clases permiten representar cosas reales (y no reales tambien)

## herencia

permite darle propiedades y metodos de una clase a otra clase para poder reutilizar codigo

## clase base

es la madre, define atributosymetodos que tenran las derivadas

## clase derivada

es la clase que hereda metodos de otra clase y agregarle o modificar metodos propios. una instancia hija tiene metodos de 
la clase madre.

## reutilizacion de codigo

la herencia permite reutilizar codigo de una clase en todas sus hijas

## a tener en cuenta

- se debe cumplir la relacion "es un"
- la herencia es una relacion muy rigida
- la clases hijas deben adherir a la totalidad del contrato de la clase madre si eso no se comple o se cumple parcialmente no sirve, no se puede aplicar herencia

## clases sin descendientes

Son llamadas finales o selladas y no admiten herencia

## clase abstractas

clases que no pueden ser instanciadas pero si herededas, clase no anstrata = clase concreta

## redefinicion

es cambiar un comportamiento de una clase dentro de otra clase heredera, redefinicion abarca metodos, no atributos, los metodos privado no pueden redefinirse

## interface

conjunto de elementos visibles de la una clase heredable

## herencia multiple

una clase puede heredar elementos de varias clases, leguajes que lo soportan: c++, perl, python

### investigar el problema del diamante

## encapsulamiento

es un pilar, mecanismo para ocultar detalles de implementacion de ina clase al mundo exterior y proporcionar una interfaz publcica para acceder y modificar el estado interno de un objeto.

### oculatamiento de informacion

es la practica de dar una interfaz publica parra acceder y modificar el estado interno de la clase

al encapsular el estado interno de una clase podemos cambiar la implementacion de la misma sin afectar el codigo que la usa, esto nos permite que la clase se controle a si misma haciendola mas facil de mantener, (si un atributo es publico por ejemplo lo puedo modificar desde otra clase sin que esta tenga control de eso mismo) permite cambiar la implementacion de la clase sin aferctar al codigo que la usa

### en programacion estructurada tambien hay emcapsulamiento

## emcapsulamiento es aproximadamente igual a responsabilidad (es lo mas dificil de respetar el encapsulamiento)

## siempre tener criterio

## si al describir lo que hace tu clase en voz alta suena ridiculo muy seguramente estes rompiendo encapsulamiento

## lecturas obligatorias

- tell dont ask

- getterEradicator


para los protegidos aplica lo mismo
preguntar si redefinir metodos en clases hijas no rompe solid
