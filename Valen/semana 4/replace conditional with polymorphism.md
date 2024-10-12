# remplazar los condicionales con polimorfismo

## problemas

tenemos un condicional que hace varias acciones dependiendo del tipo de objeto y sus propiedades

## solucion

creamos una subclase cumpla con lo pedido en el condicional, luego creamos un metodo compartido al que luego le moveremos el codigo del condicional que estamos buscando testear, luego remplazamos el condicional con una llamada al metodo, el resultado de una buena implementacion estara atado via polimorfismo dependendiendo del objeto en cuestion

### ejemplo sin polimorfar

```java
class Bird {
  // ...
  double getSpeed() {
    switch (type) {
      case EUROPEAN:
        return getBaseSpeed();
      case AFRICAN:
        return getBaseSpeed() - getLoadFactor() * numberOfCoconuts;
      case NORWEGIAN_BLUE:
        return (isNailed) ? 0 : getBaseSpeed(voltage);
    }
    throw new RuntimeException("Should be unreachable");
  }
}

```

### ejemplo polimorfo

```java
abstract class Bird {
  // ...
  abstract double getSpeed();
}

class European extends Bird {
  double getSpeed() {
    return getBaseSpeed();
  }
}
class African extends Bird {
  double getSpeed() {
    return getBaseSpeed() - getLoadFactor() * numberOfCoconuts;
  }
}
class NorwegianBlue extends Bird {
  double getSpeed() {
    return (isNailed) ? 0 : getBaseSpeed(voltage);
  }
}

// Somewhere in client code
speed = bird.getSpeed();

```

## porque hacer el refactor

este metodo es util cuando tu codigo esta realizando operaciones basadas en:

- la clase interfaz u obnjeto que se implementa
- el valor del campo de un objeto
- el resultado de la llamada a un objeto y metodos de objeto

si se agrega una nueva propiedad al objeto vas a tener que agregar un nuevo condicional y el nuevo codigo que se le refiere, lo cual se multiplicaria para cada metodo del objeto( terminaria anidando if's)

## beneficios

- respetas el tell  don't ask en vez de preguntarle al objeto sobre su estado y tomando decisiones en base al mismo le decis al objeto que tiene que hacer y lo dejas decidir el como hacerlo

- no duplicas codigo uya que te sacas de encima condiciones similares

- si necesitas agregar alguna variante distinta de ejecucion solo necesitas agregar otra subclase

## como hacer el refactor

para poder refactorizar vas tener que tener ya definida una jerarquia de clases, si no la tenes, hacela, otros tips serian

- remplazar tipos por sublases

se crearan sublclases para los valores de un objeto, esto es simple pero menos flexible ya que no podras crear sublclases para todas las propiedades de un objeto

- remplazar tipos con la estrategia de estado

una clase sera dedicada a ciertas propiedades particulares de un objeto y para cada valor del objeto se creara una sublclase, la clase en cuestion contendra refenrencias al tipo de objeto que se desea delegar


## pasos de refactor

1. si el condicional es un metodo que ejecuta otras acciones extrae el metodo
2. para cada subclase heredada modifica la implementacion del metodo
3. elimina las ramas del condicional
4. repeti el proceso hasta que el condicional este vacio, luego converti el condicional en un metodo abstracto