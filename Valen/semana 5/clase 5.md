# Diagramas

### aprendete LATEX bobi

jueves --> UMLs

podes usar UML para hacer consultas relacionadas al code

Astah, lucid chart, draw.io, plantUml **no usar star uml**

el - indica un atriubto / metodo privado
el + indica publico (como tu vieja)

flechas relacionan objetos (indican que tanto interactuan las clases entre si)

## tipos de flechas

- flecha punteada: indica asociacion 
- flecha con rombo: agregacion : cuando un objetos tiene muchos de un objeto (tenes getter)
- flecha con rombo pintado: composicion: es la mas restrictiva en el sentido de no puede ser instanciada sin la existencia del otro
*--->
- flecha sin puntear y de punta vacia: herencia
- flecha punteada y de punta vacia: interface
- flecha sin puntear de punta negra (donde se sienta tu vieja):  
- flecha punteada de punta negra: es un contenedor de (solo contiene objetos)

## diagrama de secuencia

cada metodo grande tiene su propio diagrama de accion (secuencia) (normalmente)

el : representa que es una instancia

son recursivos

la dos lineas indican linea de vida

## excepciones

dominio: problema que estamos solucionando 
falla: esta fuera de nuestro alcance (que se caiga internet es una falla,que se corte la luz)
error: es algo que se produce 

lanzamos escepciones cuando no se cumple una precondicion o un invariante

los errores del repositorio (sql, archivo, etc) no deben llegar al usuario, debemos capturar estos errores y darle un contexto semantico al usuario

on do --> try catch
on: el except, la condicion de error, puede trata multiples errores
do: maneja el error, tratamiento del error, un unico tratamiento

un error es un objeto

