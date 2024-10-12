# principios solid

## significado de principios

Norma o ideal fundamental que rige el pensamiento de o la conducta

## principios de diseño

existen varios que ya aplicamos en la materia, tell dont ask, DRY y ahora S.O.L.I.D.

## Posibles funciones

- Estandariza el desarrollo
- Posibilita medicion estandarizada
- Asegura una cota minima de calidad

## Principios

1. single responsability
2. open / close
3. principio de sustitucion de Liskov 
4. segregar interfaces
5. inversion de dependencia

## Single responsability 

Una clase deberia tener una unica razon para cambiar.

- una refactorizacion o un arreglo de un bug no es una razon de cambio
- las razones de cambio son cambios de los requerimientos

para mas responzabilidades creo mas clases

## Open / Close

una clase debe estar abierta a su extension pero cerrada a la modificacion

- se debe poder cambiar el comportamiento sin modificar el codigo ya existente (herencia/delegacion)

## Principio de sustitucion de Liskov

una clase hija deberia poder ser utilizada a traves de su clase madre sin que se note la diferencia

## Principio de segregacion de la interfaz

un cliente no debe ser obligado a depender de metodos que no utilizan

- Muchas interfaces especificas son mejores que una interfaz de proposito general
- Es necesario aplicarlo cuando se tiene una clase con varios metodos, de los cuales solamente me interesan alguna

## Principio de inversion de dependencia

Se debe depender de abstracciones y no de implementaciones, los modulos de alto nivel no pueden depender de los de bajo nivel y viceversa, los detalles deben depender de las abstracciones no al reves

