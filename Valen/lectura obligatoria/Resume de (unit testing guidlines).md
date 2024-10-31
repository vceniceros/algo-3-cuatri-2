# Unit Testing Guidelines

**Geosoft** es una empresa de programación que destaca por haber creado una herramienta que lee mediante grafos los JSON logs. Lo que nos compete aquí es una serie de guías para *tests* unitarios que se encuentran en su página.

---

## 1. Mantener los tests unitarios pequeños y rápidos

Idealmente, cada test debería ejecutarse antes del *code check-in* (check-in: subir el código al repositorio principal). Mantener los tests rápidos reduce los tiempos de desarrollo.

---

## 2. Los tests deben ser completamente automáticos y no interactivos

Los tests deben ser completamente automáticos; si requieren de algún chequeo manual, entonces no serían tests unitarios.

---

## 3. Hacerlos sencillos de ejecutar

Configurar los entornos de desarrollo para que los tests sean sencillos de ejecutar (máximo un clic o una línea de comando).

---

## 4. **Medir los tests**

Aplicar siempre un método de análisis a los tests para leer su ejecución exacta e investigar qué partes del código se ejecutan y cuáles no.

---

## 5. **Arreglar los tests que fallan inmediatamente**

Todo desarrollador debe asegurarse de que sus tests funcionen correctamente. Si un test de una batería falla, todo el equipo debería revisar la falla inmediatamente.

---

## 6. **Mantener los tests a nivel unitario**

Cada test debe probar una clase en un entorno aislado. Aunque es tentador probar un flujo completo de trabajo, esto no sería un test unitario.

---

## 7. Empezar desde lo simple

Un test simple es mejor que no tener test. Una clase de testeo básica puede establecer una base para ir mejorando.

---

## 8. **Mantener los tests independientes**

Ningún test unitario debe depender de otro para funcionar.

---

## 9. **Mantener los tests cerca del código**

Si la clase se llama `Perro`, el test debería llamarse `TestPerro` y estar en el mismo directorio que la clase.

---

## 10. Nombrar los tests apropiadamente

Si un test prueba una característica específica de una clase, debería llamarse como esa característica. Ejemplo: `test_eliminar`, `test_enviar`.

---

## 11. **Probar solo la API pública**

Los tests solo deben probar clases y métodos públicos. Si necesitas probar una clase privada, evalúa si debería ser pública.

---

## 12. Pensar en caja negra

Piensa como un tercero y prueba la clase solo para ver si cumple con los requisitos.

---

## 13. Pensar en caja blanca

Si programaste el test, también programaste la clase, y es importante poder probar la lógica más compleja.

---

## 14. Probar los casos triviales

Es imposible definir uniformemente lo que es "trivial". En una caja negra, es imposible intuir qué pruebas son triviales.

---

## 15. **Priorizar la cobertura de ejecución**

Aunque uno debe aspirar a cubrir todos los casos, esto es imposible. Prioriza los casos específicos y relevantes.

---

## 16. **Probar especialmente los casos límite**

Probar siempre los casos borde:
- **Números**: 0, negativo, positivo, el más grande, el más chico, y NaN.
- **Cadenas**: cadena vacía, un solo carácter, caracteres no ASCII, o una cadena muy larga.
- **Colecciones**: colección vacía, con un solo elemento, o probando el primer y último elemento.
- **Fechas**: fechas clave como el 1 de enero, el 29 de febrero (años bisiestos) y el 31 de diciembre.

---

## 17. Usar un generador aleatorio

Cuando cubras los casos borde, considera un mecanismo para generar parámetros aleatorios y probar casos no contemplados.

---

## 18. Probar una característica a la vez

Es tentador probar varias cosas a la vez, pero cada test debe probar una sola característica.

---

## 19. **Usar asserts explícitos**

Es mejor probar `assertEquals(a, b)` que `assertTrue(a == b)` para claridad.

---

## 20. **Probar los casos negativos**

Es importante probar el manejo de errores, verificando que se lancen las excepciones esperadas.

---

## 21. Diseñar el código con los tests en mente

Es más fácil mantener código con tests unitarios si se diseña pensando en ellos desde el principio.

---

## 22. No conectar con recursos externos predefinidos

**Mockea**; no tiene sentido hacer tests que dependan del entorno externo que nuestro test no debería manejar.

---

## 23. Conocer el costo de testear

No hacer tests es costoso, pero hacerlos también. Balancea al decidir qué tests incluir.

---

## 24. **Priorizar los tests**

Es imposible probar todas las partes del sistema, así que asegúrate de probar los niveles más bajos primero.

---

## 25. Preparar los tests para manejar errores

Ten claro cómo manejar errores dentro de un test, para que no se detenga la ejecución completa por un error.

---

## 26. Hacer tests para reproducir bugs

Cuando se reporte un bug, escribe un test que lo reproduzca. El test debería pasar solo cuando el bug esté solucionado.

---

## 27. **Mantenerlo simple**

Para que los tests unitarios funcionen, deben mantenerse simples. Cuanto más simple sea la lógica, mejor.

---

## 28. **Conocer los límites**

Un test fallido indica un error en el código, pero que pase no garantiza la funcionalidad completa. Ten los requerimientos y la documentación a mano para verificar que cumple con lo esperado.
