## Primer párrafo:

el primer párrafo del articulo describe los principios que impulsaron a Daniel H Ingalls a desarrollar Smalltalk

concretamente se destaca el concepto de crear un lenguaje de programación que sirva como un vía directa entre el las ideas en la mente del usuario y la las ordenes ejecutadas por el sistema informático con el objetivo de que el lenguaje no sea una barrera entre el usuario y las ideas que tiene este mismo en mente.

Mediante el método científico  y en ciclos de 2 a 4 años se buscaba:

- crear una aplicación junto con el sistema
- Basado en esa  experiencia rediseñar el lenguaje
- crear un nuevo sistema basado en ese nuevo diseño

Durante los 80s se llego a repetir hasta 15 veces y se llego a alcanzar uno determinados principios generalistas, empezando por algunos de indoles mas social.

---
💡 1. **Maestría personal:** si un sistema esta hecho para servir a un espíritu creativo, este debe ser perfectamente entendible para cualquier individuo.

---

El punto es que el potencia humano se manifiesta en sus individuos, para logra soltar todo su potencia es necesario que el sistema no sea un impedimento, cualquier para distinta del mismo requería un esfuerzo extra en entenderlo lo cual podría cortar o limitar este potencial.

---
💡 2. **Buen diseño:** un sistema debe ser construido con la mínima cantidad de partes inmodificables y estas deben ser lo mas generales posible (este usa Linux) y todas las partes del mismo deberían estar en un framework uniforme

---

## Lenguajes:

Al diseñar un lenguaje para usar computadoras no hace falta profundizar mucho, cada herramienta que utilizamos para comunicarnos con personas sirve, los mecanismos humanos de comunicación fuero desarrollados durante millones de años por lo cual es mejor adaptar a la computadora a estos mecanismos que hacer lo contrario:

![comunicacion cuerpo mente](../../img/Captura%20de%20pantalla%202024-03-16%20170844.png)

Asumo yo la imagen se explica sola, a la izquierda el cuerpo humano a la derecha la maquina

---
💡 3. **Propósito del lenguaje:** proveer un framework para la comunicación (Un framework es un conjunto de reglas y convenciones que se usan para desarrollar software de manera más eficiente y rápida.)

---

Aca sigue una falopeada bárbara sobre explicando la anterior imagen, en resumen, asi como el cuerpo es solo una herramienta de la mente humana para poder interpretar mediante los sentidos al universo (este señor desayunaba LCD) el lenguaje debe ser una herramienta para poder llevar los pensamientos del individuo hacia la maquina

---
💡 4. **Foco:** el diseño del lenguaje para usar una computadora debe lidiar con modelos internos, medios externos, y la interacción entre estos tanto el humano como la computadora.

---

## Objetos comunicándose:

Asi como la mente observa un vasto universo uno mediante el lenguaje busca llevarse un pedazo del mismo y darle su propio significado, de ahí deriva el significado de objeto, uno agarra un pedazo del universo y le da un nombre y un significado (como ejemplo usa una silla la cual nosotros llamamos silla distinguiéndola de cualquier otra cosa que no sea una silla). y asi como distinguimos una silla también distinguimos esa silla, porque cuando uno habla sobre un objeto habla sobre ese objeto en particular dándole asi un identificado (instanciación) 

---
💡 **5. Objetos:** el lenguaje de una computadora debería soportar el concepto de objeto y proveer un entendimiento uniforme y maneras de referirse a un objeto en su universo.

---

El almacenamiento de Smalltalk provee un modelo OO de memoria donde se asocia un único numero (Integer) a cada objeto del sistema, esto permite que variables puedan tener distintos valores y aun asi estar enlazadas a un mismo bloque de memoria, esto a su ves logra que un objeto pueda ser pasado por referencia a lo largo del sistema y este solo dejara de existir cuando desaparezcan todas sus referencias en el mismo.

---
💡 **6. Manejo de almacenamiento:** para ser realmente orientado a objetos el sistema debe proveer un manejo automático de la memoria(c y c++ les hablo a ustedes).

---

Una manera de ver que un lenguaje esta trabajando bien es ver si los programas se ven como lo que dicen que están haciendo, si hay sentencias que se encargan de manejar memoria es porque el sistema no esta adaptado a los humanos. imagínate tener que preparar a una persona para cada cosa que le vas a pedir que haga y aun asi que esta sea capaz de olvidarse como y que hacia. 

Todo elemento del universo vive por si mismo, similar a eso nuestro cerebro tiene un proceso mental para cada objeto.

---
💡 **7. Mensajes:** la computación debería poder verse como la capacidad intrínseca de los objetos de poder ser invocados uniformemente mediante el envió de mensajes.

---

Debido a que la típica carga de datos de los sistemas y existentes cargan con un monton de problemas conceptuales y técnicos Smalltalk provee su propia solución. envía los nombres de los procesos deseados como un mensaje a los objetos asumiendo que estos mejor que nadie entenderán como procesar ese dato.

---
💡 **8. Metáfora uniforme:** un lenguaje debe ser diseñado sobre una poderosa metáfora para ser uniformemente aplicado a cualquier área.

---

Ejemplos de éxitos en esta área vienen a ser LISP un lenguaje orientado a estructuras enlazadas y APL un lenguaje orientado a arrays, en Smalltalk hasta un Integer es un objeto en este esquema, con sus comportamientos internos y preparado para recibir mensajes e interactuar con otros objetos.

## Organización:

Una metáfora uniforme permite al framework crear sistemas complejos relacionados a sus principios organizacionales pudiendo manejar asi su complejidad.

---
💡 **9. Modularidad:** ningún componente de un sistema complejo debería depender de detalles internos de un componente externo.

---

![conexiones entramadas](../../img/Captura%20de%20pantalla%202024-03-17%20181215.png)

A medida que un sistema crece, también lo hace la posibilidad de interdependencia indeseada entre los distintos componentes.

Tomando un sistema con n componentes, podemos observar en la imagen que se van generando n-conexiones. Si queremos que este sistema pueda ayudar a resolver tareas complejas, la interdependencia entre sus componentes debe ser evitada. La metáfora mensaje-envío provee modularidad a estas interdependencias, información estructurada es brindada entre los objetos mediante estos mensajes.

La complejidad de estos sistemas puede ser reducida al agrupar componentes de características similares, esto en Smalltalk se llama "clases". Las clases describen características de otros objetos, estados, métodos y características. Los objetos vienen a ser instancias de clases.

---
💡 **10. Clasificación:** un lenguaje debe proveer maneras de clasificar objetos similares y añadir nuevas clases de objetos que de igual manera se usen junto con las clases pertenecientes a las clases del sistema.

---

La clasificación es la objetivización del anidamiento, así como las personas tomamos una cosa y la vinculamos con otra similar a esta, un lenguaje debe poder clasificar un objeto para poder vincularlo a otro objeto de similares características.

Las clases son el mecanismo principal de Smalltalk, se debe poder combinar las clases del Kernel junto con las añadidas por el usuario para así generar una representación lo más fidedigna posible de lo que el usuario quiere. El principio de modularidad deriva en una implicación interesante:

---
💡 **11. Polimorfismo:** un programa solo debería especificar el comportamiento de un objeto, no de su representación.

---

Un principio fundamental de Smalltalk estaría representado en que, por ejemplo, no exista una distinción entre un largeInteger y un shortInteger sino que se use la clase Integer, es más sencillo ya que si para cada objeto nuevo similar a otro tuvieras que hacer una nueva clase con sus métodos y características tendría un amplio abanico de posibles errores.

---
💡 **12. Factorizar:** cada componente independiente de un sistema aparecerá solo en un único lugar.

---

Hay muchas razones para seguir este principio, primero: Ahorra tiempo, espacio y esfuerzo, segundo: Facilita la búsqueda, tercero: los usuarios pueden fácilmente encontrar lo que buscan (si Windows es para vos), cuarto: sin la apropiada factorización es complicado sincronizar los cambios hechos entre distintos objetos de una clase.

Smalltalk te motiva a factorizar bien mediante la herencia, cada clase hereda comportamientos de su superclase, por ejemplo, una clase Auto heredará comportamientos de una clase más general llamada Vehículos.

---
💡**13. Nivelar:** cuando un sistema está bien factorizado, los usuarios pueden nivelarlo como prefieran.
---


Supongamos que queremos ordenar una Ordered Collection en Smalltalk tendremos un método llamado sort en la clase orderedCollection, al crear este método todas las instancias de la clase orderedCollection tendrán acceso a este método.

Teniendo en cuenta la cantidad de primitivas que podrían requerirse para alcanzar esto, Smalltalk tiene una solución para que todo sistema pueda ejecutarlo sin problema.

---
💡 **14. Máquina virtual:** las especificaciones de una máquina virtual permiten al framework la aplicación de la tecnología.

---

La máquina virtual de Smalltalk permite toda una estructura para mantener todos los puntos previamente mencionados (sistema de envío de mensajes, orientación a objetos, procesamiento de modelos, etc.)

## Interfaz de usuario:

Una interfaz de usuario es aquella donde la mayoría de la interacción es visual y, como esta es esencial en la cultura humana, la estética debe tener un rol fundamental en este asunto.

---
💡 **15. Principio reactivo:** cada componente accesible al usuario debe poder presentarse a sí mismo de una manera significativa sobre cómo manipularse y observarse.

---

Este criterio se adapta perfectamente al modelo de envío de mensajes, por definición cada objeto provee un protocolo apropiado para interactuar con el mismo, a nivel de interfaz el lenguaje apropiado es cada objeto que se pueda mostrar en pantalla (menús, botones, imágenes, etc).

La mayoría de los sistemas operativos violan estos preceptos, por eso está en el programador hacer que estos se cumplan (la concha de tu madre Windows).

---
💡 **16. Sistema Operativo:** un sistema operativo es una colección de cosas que, si no entran dentro del lenguaje, no deberían estar. (Windows lpqtp)

---

Aquí hay una serie de cosas que un sistema operativo convencional comparte con el lenguaje SmallTalk.

- Manejo de memoria
- Sistema de archivos
- Manejo de display
- Entrada por teclado
- Acceso a subsistemas
- Debugger

Smalltalk no tiene un sistema operativo pero tiene primitivas y operaciones fundamentales de uno.

## Trabajo por hacer (desenlace):

El artículo cierra con una serie de actualizaciones pendientes y enumerando mejoras que Smalltalk sufrió durante los 80s, cierra con un principio fundamental que indefectiblemente también alcanzó al lenguaje en cuestión.

---
💡 18. Selección natural: Los lenguajes y sistemas que están bien diseñados van a persistir y solo serán reemplazados por mejores.

---