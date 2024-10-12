# clase 10

## Muck object

objetos dobles, son objetos que simulan el comportamiento de objetos reales de una forma controloda

## patron proxy

permite porporcionar un sustituto para otro objeto, un proxy controla un acceso al objeto original, permite hacer algo antes o despues de que la solicitud llegue al objeto original

## para que sive un muck

pruebas aisladas

## testear con clases aisladas es facil

porque quita las dependencias a una clase

## testear con clases dependiente es dificil

una clase muck me permite hacer testeos en clases que dependen de distintos factores, me permite por ejemplo ver como se comportaria mi codigo en caso a distintos fallos

## framework a usar: mockito

## framework

me da muchisimas herramientas para programar herramienta prefabricada, me da modificarlas, me ahorra el marco de cosas que me hacen funcionar el codigo

## libreria

es parecido pero este es codigo que yo solo invoco y uso, no modifico nada de la libreria

## Mocking sin Framework
Crear clase [NombreClase]Mock y reducir el codigo al ridiculo

## Graduralidad

Dependiendo de el grado de implementacion tiene el mock con respecto a la OG CLASS, se da cierta graduralidad