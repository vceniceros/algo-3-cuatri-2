# Principios

Los test unitarios deben ser tan fáciles de hacer como el código de producción, ya que una buena calidad de los mismos mejora sustancialmente la calidad del código previo a que lo vea un QA. Como no todos saben reglas específicas, aquí hay 8 principios principales para hacerlos bien.

## 1. Saber lo que se testea

Si bien suena trivial, muchas veces el no tener claro qué se quiere testear exactamente genera que los test no terminen siendo concretos o, peor aún, testeen más de un caso. Es imperativo tener definido qué escenario específico se desea probar en cada test.

## 2. Un test unitario debe ser autosuficiente

Un test no debe depender ni de otros tests, ni de variables del entorno, ni de bases de datos, ni de ningún elemento externo al test en sí mismo. El mismo test debería ejecutarse 1000 veces, y si no se cambió nada del código, debería funcionar igual.

## 3. Un test debe ser determinista

Un test no puede pasar a veces sí y a veces no; debe o pasar todas las veces que se ejecute o no pasar hasta que el código sea refactorizado correctamente.

## 4. Nombrar convenciones

Es importante saber con solo leer el test qué es lo que está fallando exactamente. Para eso, es esencial elegir un buen nombre del test. Un test bien nombrado hace que se vea más rápidamente qué falló y por qué.

## 5. Repetite a vos mismo

Si bien en código de producción está mal repetir código, en lo que a tests se refiere, a veces es mejor para hacer estos tests más legibles.

## 6. Testea resultados, no implementaciones

Testear implementaciones no es conveniente, ya que estas pueden ir variando a lo largo del tiempo e incluso generar errores a pesar de que el resultado obtenido del test sea el esperado. Diseño, requerimientos e implementación van a ir cambiando; los resultados deseados, no.

## 7. Evitar la sobreespecificación

Si bien es tentador plantear un test súper definido, controlado y estricto, a veces es mejor dejarle un poco de holgura a la rigurosidad de los tests para no correr el riesgo de encerrar el test en el escenario específico en que se lo testea.

## 8. Usar un framework de aislamiento

Usar frameworks que te permitan probar features que dependan de dependencias externas, como bases de datos o servidores (usar mock objects).
