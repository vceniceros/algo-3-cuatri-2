# getter erradicator

se habla mucho de lo mal que esta usar getters pero no se plantea tanto el realmente porque estan mal, se dice que violan el encapsulamiento ahora, porque eso estaria mal?

no es una neta cuestion de ocultar data es mas bien una cuestion de ocultar ciertos detellas de la implementacion  y decisiones de diseño particularmente en areas donde pueda haber cambiado, cuando te plantees sobre el encapsulamiento mejor planteate que pieza de variabilidad se esta ocultado y porque

la realidad de porque es importante erradicarlos es que si bien la mayoria de lenguajes estan hechos orientados a objetos no asi la mayoria de los programadores hacen POO, por lo cual ese ve mucho procesos donde se sacan datos de objetos para manejarlos en vez de dejar que la clase en si misma maneje sus propios datos(se tiende a romper el tell don't ask cuando se usan getters)

tampoco es que nunca se deban usar getters pero uno siempre tiene que preguntarse "es necesario pedirle estos datos a la clase? o es mejor pedirle que directamente trabaje sobre ellos mismos"

siempre hay que estar atento especialmente si una clase tiene como unico proposito guardar datos, muy seguramente esa clase tenga un problema de getterErradicator

por ultimo siempre siempre que veas un getter hacete la pregunta **"puedo desarseme del getter"**  

self subclassResponsability
