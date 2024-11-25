# paradigma funcional

## origenes

origen matematico, se basa en el calculo lamda

### la era lisp

es uno de los primero lenguajes de alto nivel, influencio sobre todo a js y python 

contenia
- recursion
- funciones de orden superior
- estructura de datos dinamicas

### lenguajes modernos

- erlang
- haskell
- scala

### adoptado por los lenguajes

- python: agrega funciones lamda
- javascript: introduce funciones a los arrays, map, filter y reduce

## ¿porque ahora hay un auge en la programacion funcional?

el auge de los sistemas concurrentes, big data y la computacion distribuida destaco el valor de la inmutabilidad y los paradigmas declarativos

## programacion funcional proporciona

- comportamiento predecible en procesamiento paralelo
- mantenimiento simplificado para grandes sistemas

## porque se llama funcional

1. la parte de funcional hace alucion a las funciones de calculo computacional
2. mientras la programacion imperativa toma los programas como secuencias de comandos la programacion funcional los toma como la evaluacion de funciones matematicas, las funciones recibe entradas y salidas evitando efectos secundarios

## funcional ves estructurada

- una se enfoca en que la otra en como

- una hace bucles mediante recurcibidad o metodos del array, el otro con bucles explicitos como while y for

- una es inmutable la otra mutable

- una maneja errores con funciones como monads y la otra con try or catch

## funcional vs objetos

- tranformacion de datos con funciones, el otro tiene objetos y estados mutables
- inmutable uno mutable el otro
- efectos secundarios evitados, en el otro no
- modularida meidante compocicion de funciones, el otro clases y herencias
- concurrencia seguridad natural con datos inmutables, la otra con sincronizacion

## principios fundamentales

### inmutabilidad

los datos no cambian una vez creados

ejemplo

```

const original = {a = 1, b =2}
const copy = {...original, b: 3}
console.log(copy) = {a: 1, b: 3}

```



### Funciones puras

1. los valores de retorno de la funcion son identicos para argumentos identicos ( sin variacion con variables estaticas, locales, no locales, argumentos de referencia o flujos de entrada, transparencia refernecial).

2. la fucncion no tiene efectos secundarios( sin mutacion de valriables estaticas, locales, variables estaticas locales, no locales, etc).

ejemplo

````

cons sum => (a, b) = a + b

````

contra ejemplo

```
let counter = 0
const incremente = () => counter ++
```

### Declarativas

se enfoca en el que y no el como

### funciones de orden superior

son ciudadanos de primera clase

1. poder pasar funciones como argumento a otras funciones

2. que el valor de retorno de una funcion sea otra funcion

3. asignar funciones a variables o almacenarlas en estructuras de datos


```
const applyFuntion = (fn, value) => fn(value);

const double = (x) => x * 2

console.log(applyFunction(double, 5)); // 10
```

### transparencia referencial

## ventajas

### 1. legibilidad

el codigo es simple y precible

### 2. concurrencia segura

evita problemas de condiciones de carrera

### 3. escalabilidad

se adapta facilmente a sistemas grandes

### 4. facilidad de pruebas

las funciones puras son faciles de probar de forma aislada lo que mejora la calidad

### 5. reutilizacion de codigo

las funciones de orden superior y la compocicion permiten crear bloques reutilizables