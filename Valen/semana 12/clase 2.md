# patrones de diseño

ya existen patrones de diseño para esto ya estan inventados, usalooos.

la unica constante es pi, no importa que estes haciendo, lo unico constante es pi, el resto todo puede cambiar

## principios de diseño

indintifique los aspecots de una aplicacion que varie y separelos de lo que permanece igual, tome las partes que varien y encapsulenlas de forma tal que al tocar lo que varie no afecte a lo que no varia

separamos los comportamientos variables en "clases" para poder modelar por si solos los comportamientos que varien en el tiempo

## programar contrar interfaces no contra implementaciones

o sea contra un super tipo, un tipo lo mas abstracto posible, esto permite que mas adelante de menos laburo el agregar o cambiar cosas

## tiene un es mejor que es un

es mejor componer que herededar ya que la herencia es muy rigida y en cambio la composicion es mas flexible ya que al componer con interfaces es mucho mas  dinamica la implementacion que se puede realizar y per,mitir cambios en tiempo de ejecucion

## el patron strategy

Define una familia de algoritmos encapsulandolos dentro de otros

## Una maxima

conocer los pilares y solid **no te hace un buen diseñador y programado** , un buen diseñador crea diseños flexibles para bancarse mejoras a futuro y cambios al largo del tiempo.

## el poder del vocabulario

- ayuda a decir mas con menos
- hablar a nivel de patron permite mantenernos mas en el diseño
- empodera a un equipo de trabajo
- anima a los que menos saben a ponerse al dia

## que es un patron 

es una solucion a un problema en un contexto

- contexto: es una situacion para la cual aplica el patron, deberia ser frecuente
- problema: es un objetivo a alcanzar en el contexto(tambien se refiere a las restricciones)
- solucion: es un diseño general que cualquiera puede aplicar y resuelve el problema

strategy por ejemplo es un patron para resolver problemas donde yo quiero que mi clase cambie su comportamiento en tiempo de ejecucion

## catalogo de patrones

### nombre

#### intencion

describe lo que hace el patron en una breve descripcion

#### motivacion

brinda un escenario donde deberias usar ese patron

#### aplicabilidad

describe las situaciones donde deberias 

#### estructura

es el como se ve (parece uml)

#### participantes

son las clases y objetos de diseño que se involucran en el patron

#### colaboraciones

nos dicen quienes hicieron el patron

#### consecuencias

lo mas importante, describe los efectos que se podrian obtener al aplicar el patron tanto buenos como malos

#### implementacion

ejemplos de codigo

#### usos conocidos

donde se usaron

#### Patrones relacionados

patrones que se relacionan

## kiss

keep it simple and stupid, mantenerlo simple a veces es mejor que usar patrones, intenta que tu implementacion y modelo sea lo mas simple posible

## Bala de plata

nada es plug y play y funciona siempre, a veces es mejor mantener un diseño simple hasta que sea necesario usar un patron

## cuando usarlos

lo vas a saber con el tiempo y la experiencia

## refactoring

el tiempo de refactoring es ideal para ver si nuestro diseño es el mejor estructurado

## sin miedo

a veces hay que voltear el patron, cuando la solucion simple es mejor que el patron es mejor dropearlo e ir a lo simple

## resistir la tentacion

si no existe la necesidad practica de hacerlo no lo hagas

## tip

concentrate en el diseño no en los patrones, si tu diseño puede ser mejorado por patrones, joya, sino ni te gastes

## antipatrones

es todo lo contrario, son cosas que suenan como buenas soluciones pero son una verga

## catalogo

<a href ="https://docs.google.com/presentation/d/1HkpvPjEEyLVQnZ4Qh-8cbv-XXxLoRafqiL9lLzzGQrw/edit#slide=id.p1"> link de catalogo </a>