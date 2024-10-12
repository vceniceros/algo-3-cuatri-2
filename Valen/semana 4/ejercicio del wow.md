# ejercicio de wow (polimorfismo)

## contexto

los aldeanos pueden usar 3 tipos de herramientas hacha, pico, azada, este se desgastan por uso

### hacha

se desgasta linealmente

### pico

no se desgasta

### azada 

se desgasta en sucesion de fibonacci

``
todas las herramientas tiene durabilidad 10
``

## casos de testeo

1. usan 3 veces el hacha y la usan una cuarta vez sin drama
2. usan el pico 10 veces y la 11 tambien
3. un aldeano utiliza la azada 4 veces y la usa una 5ta
4. usan 5 veces la azada y la 6ta ya no


## clases iniciales

aldeano: este se equipa una herramienta y la usa

## herramienta

esta es abstracta y compone lo mas basico de una heramienta (usar, y durabilidad)