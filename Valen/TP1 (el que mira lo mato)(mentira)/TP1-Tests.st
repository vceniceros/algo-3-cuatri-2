TestCase subclass: #AlgoRastreadorZTest
	instanceVariableNames: 'precision'
	classVariableNames: ''
	package: 'TP1-Tests'!

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'SV 3/25/2024 19:04'!
test01UnPeleadorConCiertoKiYTransformacionPoseeElSiguienteNivelDePelea		
	| kiEsperado kiObtenido algoRastreadorZ  |
	
	"Arrange"	
	kiEsperado := 5000.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	"La lectura se hizo con un modelo viejo. El estado base no afecta el nivel de Ki"
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Base'. 
	
	"Act"	
	kiObtenido := algoRastreadorZ nivelDePeleaDe: 'Goku'.
	
	"Assert"
	self assert: kiEsperado equals: kiObtenido! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'SV 3/22/2024 15:41'!
test02UnPeleadorConUnKiMayorA9000RompeElRastreadorViejo	
	| kiEsperado kiObtenido algoRastreadorZ  |
	
	"Arrange"		
	kiEsperado := 9000.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	"El kaio-ken multiplica por 2 el nivel de ki"
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	
	"Act"	
	kiObtenido := algoRastreadorZ nivelDePeleaDe: 'Goku'.
	
	"Assert"
	self assert: kiEsperado equals: kiObtenido! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'SV 3/22/2024 15:42'!
test03UnPeleadorConUnKiMayorA9000EsLeidoCorrectamentePorElRastreadorNuevo
	| kiEsperado kiObtenido algoRastreadorZ  |
	
	"Arrange"		
	kiEsperado := 10000.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	"El kaio-ken multiplica por 2 el nivel de ki"
	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	
	"Act"	
	kiObtenido := algoRastreadorZ nivelDePeleaDe: 'Goku'.
	
	"Assert"
	self assert: kiEsperado equals: kiObtenido! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'Joaquin 3/23/2024 18:03'!
test04EntreUnPeleadorYOtroElRastreadorDetectaAlMasFuerte
	| peleadorMasFuerteEsperado algoRastreadorZ  peleadorMasFuerte |
	
	"Arrange"	
	peleadorMasFuerteEsperado := 'Goku'.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Base'. 
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Napa' KiBase: 4000 yTransformacion: 'Base'. 
	
	"Act"	
	peleadorMasFuerte := algoRastreadorZ obtenerPeleadorSegunCriterio.
			
	"Assert"
	self assert: peleadorMasFuerteEsperado equals: peleadorMasFuerte! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'SV 3/25/2024 19:39'!
test05UnPeleadorQueSeTransformaEnMonoGiganteAumentaConsiderablementeSuNivelDePelea		
	| kiEsperado kiObtenido algoRastreadorZ  |
	
	"Arrange"	
	kiEsperado :=  (6000 * 10) asLargerPowerOfTwo. 
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	"El estado de mono gigante aumenta considerablemente el nivel de pelea"
	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Vegeta' KiBase: 6000 yTransformacion: 'Mono Gigante'. 
	
	"Act"	
	kiObtenido := algoRastreadorZ nivelDePeleaDe: 'Vegeta'.
	
	"Assert"
	self assert: kiEsperado equals: kiObtenido! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'Joaquin 3/23/2024 18:03'!
test06EntreDosPeleadoresQueSuperan9000DePoderDePeleaElRastreadorViejoNoDetectaCorrectamente
	| peleadorMasFuerteEsperado algoRastreadorZ  peleadorMasFuerte |
	
	"Arrange"	
	peleadorMasFuerteEsperado := 'Goku'.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.

	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Vegeta' KiBase: 6000 yTransformacion: 'Mono Gigante'. 
	
	"Act"	
	peleadorMasFuerte := algoRastreadorZ obtenerPeleadorSegunCriterio.
			
	"Assert"
	self assert: peleadorMasFuerteEsperado equals: peleadorMasFuerte! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'Joaquin 3/23/2024 18:03'!
test07EntreDosPeleadoresQueSuperan9000DePoderDePeleaElRastreadorNuevoDetectaCorrectamenteAlMasFuerte
	| peleadorMasFuerteEsperado algoRastreadorZ  peleadorMasFuerte |
	
	"Arrange"	
	peleadorMasFuerteEsperado := 'Vegeta'.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.

	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Vegeta' KiBase: 6000 yTransformacion: 'Mono Gigante'. 
	
	"Act"	
	peleadorMasFuerte := algoRastreadorZ obtenerPeleadorSegunCriterio.
			
	"Assert"
	self assert: peleadorMasFuerteEsperado equals: peleadorMasFuerte! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'Joaquin 3/23/2024 18:03'!
test08EntreLosSiguientesPeleadoresElMasDebilEsElSiguiente
	| peleadorDebilEsperado algoRastreadorZ  peleadorMasDebil |
	
	"Arrange"	
	peleadorDebilEsperado := 'Napa'.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Debil'.
	
	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Vegeta' KiBase: 6000 yTransformacion: 'Mono Gigante'.  
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Napa' KiBase: 4000 yTransformacion: 'Base'. 
	
	"Act"	
	peleadorMasDebil := algoRastreadorZ obtenerPeleadorSegunCriterio.
			
	"Assert"
	self assert: peleadorDebilEsperado equals: peleadorMasDebil! !

!AlgoRastreadorZTest methodsFor: 'tests' stamp: 'Joaquin 3/23/2024 18:04'!
test09EntreLosSiguientesPeleadoresElMasFuerteEsElSiguiente
	| peleadorFuerteEsperado algoRastreadorZ  peleadorMasFuerte |
	
	"Arrange"	
	peleadorFuerteEsperado := 'Goku'.
	algoRastreadorZ  := AlgoRastreadorZ conCriterioMas: 'Fuerte'.
	
	algoRastreadorZ registrarRastreoConModelo: 'Nuevo' DelPeleadorConNombre: 'Goku' KiBase: 5000 yTransformacion: 'Kaio-Ken'. 
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Vegeta' KiBase: 6000 yTransformacion: 'Mono Gigante'.  
	algoRastreadorZ registrarRastreoConModelo: 'Viejo' DelPeleadorConNombre: 'Napa' KiBase: 4000 yTransformacion: 'Base'. 
	
	"Act"	
	peleadorMasFuerte := algoRastreadorZ obtenerPeleadorSegunCriterio.
			
	"Assert"
	self assert: peleadorFuerteEsperado equals: peleadorMasFuerte! !