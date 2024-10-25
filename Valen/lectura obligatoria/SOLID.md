# principios solid

## significado de principios

Norma o ideal fundamental que rige el pensamiento de o la conducta

## principios de diseño

Son principios que utilizamos para diseñar de manera mas eficientes, existen varios que ya aplicamos en la materia, tell dont ask, DRY y ahora S.O.L.I.D.

## Posibles funciones

- Estandariza el desarrollo
- Posibilita medicion estandarizada
- Asegura una cota minima de calidad

## Principios

1. single responsability
2. open / close
3. liskov sustitution(principio de sustitucion de Liskov) 
4. interface segregation (segregar interfaces)
5. dependency invertion (inversion de dependencia)

## Single responsability 

Responsabilidad unica consiste en una clase deberia tener una unica razon para cambiar, es decir que todos sus metodos y comportamientos sean en post de una responsabilidad unica que deba cumplir

- una refactorizacion o un arreglo de un bug no es una razon de cambio
- las razones de cambio son cambios de los requerimientos

para mas responzabilidades creo mas clases

ejemplo: imaginando que tuvieras una clase perro estaria bien que este pudiera ladra pero no tambien que pueda guardarse en una perrera, o meterse en un veterinario, seria 3 responsabilidades que el perro tendria y 3 razones de cambio (perrera y veterinaria), seria mejor tener una clase perrera que reciba a perro y una veterinaria que haga lo propio.

## Open / Close

una clase debe estar abierta a su extension pero cerrada a la modificacio, seria que yo pueda extender el modelo sin necesidad de tener que modificar ya sea el contrato o la implementacion de la clase para poder extender comportamientos

- se debe poder cambiar el comportamiento sin modificar el codigo ya existente (herencia/delegacion)

en el caso del perro seria abstraer el comportamiento de ladrar segun la raza de manera tal que indistinta a la raza que tenga yo no necesecita modificar el comportamiento ladrar, cada raza puede ladrar distinto pero mi metodo ladrar principal no deberia verse afectado por ello.

## Principio de sustitucion de Liskov

una clase hija deberia poder ser remplazada por su clase madre sin que se note la diferencia en el contrato de la misma

yo tendria que remplazar la clase doberman por la clase perro y ambas tienen que entender los mensajes de ladrar, sentarse y hacerse el muerto

## Principio de segregacion de la interfaz

un cliente no debe ser obligado a depender de metodos que no utilizan

- Muchas interfaces especificas son mejores que una interfaz de proposito general
- Es necesario aplicarlo cuando se tiene una clase con varios metodos, de los cuales solamente me interesan alguna

si tengo perros, gatos y canarios, quizas no me interesa que si bien las 3 sean animales las 3 entiendan el mensaje saltar

## Principio de inversion de dependencia

Se debe depender de abstracciones y no de implementaciones, los modulos de alto nivel no pueden depender de los de bajo nivel y viceversa, los detalles deben depender de las abstracciones no al reves

no tendria sentido que la clase abstracta perro de alguna manera dependa en su implementacion de la clase doberman 