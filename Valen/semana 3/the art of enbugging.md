# the art of endbuggin

antropomorificamente se usa mucho la palabra bug para referirse a errores de codigo aunque realmente esta palabra es solo una excusa para no admitir errores de diseño, los bugs no llegan solos sino que los metemos indirectamente mediante errores de diseño, el proposito de este libro es evitar lo mas posible generar condiciones en las cuales puedan existir estos bugs

## tell don't ask

la diferencia central entre los lenguajes de POO con cualquier otra estructura es la capacidad de no sencillamente programar de manera procedural haciendo un pasa manos de datos si no mas bien tener distintas estructuras "Objetos" que se relacionan entre si y delegan entre ellas la responabilidad de manejar estos datos diciendole asi de un objeto a otro que es lo que quiere que haga en vez de darle los datos y que este haga todo, el objeto llamado no deberia devolver informacion que luego sera procesada, es mejor llamar al objeto para que este aplique la logica que nosotros deseamos (usa el ejemplo del cajero de mc donalds cobrandose el mismo)

el que nosotros deleguemos la logica al objeto llamado evita asi que modificaciones de este objeto o de esta logica puedan afectar directamente a la clase llamadora

## principio de demeter

la ley de demeter es una buena base para ayudar a mantener el codigo "vergonzoso" a mas clases llame un objeto mas permiable es de verse afectado por la modificacion de las mismas

esta ley no es una constante pero siempre se tiene que procurar que un objeto solo llame

- a si mismo

- cualquier parametro que se le pase

- cualquier objeto que cree

- cualquier objeto que sea un componente directo del mismo

basicamente si tenemos una clase que esta compuesta de otras quizas sea mas util llamar unicamente a esta clase (y que esta a su vez llama a las clases que la componen) que llamar a todas las clases al mismo tiempo ya que esto impide crear un codigo que no tenga bugs