#  Unit testing guidlines
geosoft es una empresa de programacion la cual segun se ve en su pagina destaca por haber creado una herramienta que lee  mediante grafiosc los json logs, lo que a nosotors nos compete es una serie de guias para teste unitarios que se encuentran en su pagina.

---

## 1. Mantener los test unitarios pequeños y rapidos

idealmente todo test deberia ejecutarse previo al code *check in* (check in: cuando se sube el codigo al repositorio main), manetener rapido los testeos reduce los el tiempo de desarrollo.

---

## 2. Los test deben ser completamente automaticos y no interactivos

los test deben ser completamente automaticos, si requieren de algun cheque manual esto no estarias siendo test unitarios.

---

## 3. Hacerlos sensillos de ejecutar

Configurar los entornos de desarrollo para que los test sean sensillos de ejecutar (maximo un click o una linea de comando).

---

## 4. Medir los test

Aplicar siempre un metodo de analisis a los testeos para poder leer la ejecucion exacta e investigar que partes del codigo se ejecutan y cuales no.

---

## 5. Arreglar los test que fallan inmediatamente 

Todo desarrollador se debe asegurar de que sus test funcionen correctamente, si un test de una bateria de test falla todo el equipo debera dejar de hacer lo que esta haciendo y revisar donde se encuentra la falla en el test.

---

## 6. Mantener los test a nivel unitario

Cada test debe testear una clase y cada clase debe ser testeada dentro de un unico y aislado entorno, si bien es tentador testear un flujo de trabajo completo esto no seria un test unitario

---

## 7. Empezar desde lo simple

Un test simple es mejor que no tener test, una simple clase de testeo puede establecer una base para ir mejorando y ampliando el mismo testeo

---

## 8. Mantener los test independientes

Ningun test unitario debe depender de otro test para funcionar

---

## 9. Mantener los test lo mas cercano 

Si la clase se llama perro, el test deberia llamarse test_perro y deberia estar en el mismo directorio que la clase perro

---

## 10. Nombrar los test apropiadamente 

si un test prueba una feacture especifica de una clase deberia llamarse como esa feacture, ejm: test-eliminar, test-enviar

---
## 11. Test public api

los test solo deben testear clases y metodos publicos, s se necestia testear una clase privada estaria bueno plantearse si no deberia ser publica
---
## 12. pensar en caja negra
pensar como si fuera una tercero y testear la clase solo por si cumple con lo requerido
---
## 13. pensar en caja blanca
si programaste el test programaste la clase y es importante poder testear la logica mas compleja
---
## 14. testear los casos triviales
es imposible definir uniformemente cuando algo es "trivial" y pensandolo en caja negras realmente es imposible intuir que pruebas es trivial (supuestamente no sabemos como esta implementado, porque sabriamos que algo es trivial)
---
## 15. focus primero en la covertura de ejecucion
si biene uno debe aspirar a cubrir todos los casos de ejecucion esto es imposible por lo cual hay que priorizar cubrir los casos especificos (reales) con parametros de entrada
---
## 16. probar especialmente los casos borde
probas siempre los casos borde
- en numeros: seria 0, negativo, positivo, el mas grande posible, el mas chico y NaN
- Cadenas de texto: podrías probar con una cadena vacía, una cadena de un solo carácter, una cadena con caracteres no ASCII, o una cadena muy larga.
- Colecciones: podrías probar con una colección vacía, una con un solo elemento, o probando el primer y último elemento de la colección.
- Fechas: podrías probar con fechas clave como el 1 de enero, el 29 de febrero (en años bisiestos), o el 31 de diciembre.
---
## 17. utilizar un generador de random
cuando ya cubriste los casos bordes estaa bueno tener un mecanismo de generar parametros aleatorios para poder testear casos no contemplados
---
## 18. testar una feacture a la vez
es tentador testear varias cosas a la vez, pero no, cada test debetestear una sola feacture en un solo caso
---
## 19. usar asserts explicitos
mejor testear assertEquals(a, b) que asserEquals(a == b)
---
## 20. probar negativas
es importante probar el manejo de errores mediante probar si las excepciones que buscamos estan correctamente probadas
---
## 21. diseñar el codigo con testeo en mente
se explica solo, es mas facil mantener unn codigo con muchos test unitarios si en un principio este es diseñado de tal manera
---
## 22. no conectarlo con recurso externos predefinido
mockea pibe, no tiene sentido hacer testeos que tengan en cuenta cuestiones del entorno que nuestro feacture y nuestro test no deberian de manejar
---
## 23. saber el costo de testear 
no hacer testeos es costoso, hacerlos tambien, hace un balance a la hora de decidir si incluir o no ciertos test
---
## 24. Priorizar testeos
es imposible testar todas las partes de un sistema asi que lo mejor es asegurarse de testear los niveles mas bajos primero
---
## 25. preparar testeos de errores
siempre tener claro como manejar fallos dentro de un test, sino podrian no ejecutarse todos los test por culpa de un error de ejecucion en alguno
---
## 26. hacer test para reproducir bugs
cuando se reporta un bug escribir un test que lo reprodusca el bug, cuando este test falle es porque el bug se soluciono
---
## 27. keep it simple
para que el testeo unitario funcione debe mantenerse simple, a mas simple sea la logica de los test, mejor
---
## 28. conocer los limites
que un test no pase es un error del codigo, ahora que pase no dice nada, siempre tener a manos los requerimientos del sistema y la documentacion para saber si a parte del test el trabajo que hacemos esta cumpliendo con lo requerido
---
