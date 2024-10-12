# Pruebas automatizadas y TDD

## tipos de pruebas

### uit test
### end to end test
### integration
### unit test- lo de hoy

Testear genera un crecimiento sustentable de un proyecto

## Pruebas unitarias

- F ast
- I ndependent
- R eptetable
- S elf validation
- T imely 

## Independencia

estilo clasico 
lo stest no dependen de otros

londinense los test son de una clase
## estrucutura de prueba

AAA patenr

## Arrange:

inicializa las clases a ser testeadas y sus colaboradores y dependencias

## ACT: 

llama los metodos del sut(sistema siendo testeado) y captura de resultados

## Assert: 

Verifica si es el resultado esperado

un unit test no debe tener ifs

nombres expresivo

## Test Driven Development

Empezas por las pruebas unitarias y luego pasas al desarrollo en cuestion, esta bueno porque lo planteas desde el que quertes que pase y luego desarrollas el como.

1. Escribimos un test que falle
2. implementamos lo minimo y necesario para que el test pase
3. refactorizamos

### Ventajas

- Nos permite diseñar un modelo que tenga lo minimo y necesario
- Permite un diseño flexible dado que "si el diseño es bueno es facil de testear"
- Ver que nuestras pruebas pasan nos motiva a seguir


### datooos
## mutantes
consiste en crear metodos mutantes (cambiar cosas del codigo) y si sigue funcionando significa que sobrevivio un mutante