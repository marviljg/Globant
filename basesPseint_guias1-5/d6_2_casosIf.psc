Algoritmo d6_2_copia
	Definir def, sinDef Como Entero
	Definir def_bool, sinDef_bool Como Logico 
	Escribir "# De tornillos defectuoso: "
	Leer def
	Escribir "# De tornillos sin defectos: "
	Leer sinDef
	
	Si def200<200 Entonces
		def_bool=Verdadero
	SiNo
		def_bool=Verdadero
	Fin Si
	
	Si sinDef>10000 Entonces
		sinDef_bool=Verdadero
	SiNo
		sinDef_bool=Falso
	FinSi
	
	Si def_bool=Falso Y sinDef_bool=Falso Entonces
		Escribir "Grado 5"
	SiNo
		//Solo es necesario evaluar una condición
		Si def_bool=Verdadero Y sinDef_bool=Falso
			Escribir "Grado 6"
		SiNo
			//Evaluar la condición restante
			Si def_bool=Falso Y sinDef_bool=Verdadero
				Escribir "Grado 7"
			Sino 
				//Ya no es necesario especificar; entra directo en SiNo
				Si def_bool=Verdadero Y sinDef_bool=Verdadero
					Escribir "Grado 8"
				FinSi
			FinSi
		FinSi	
	Fin Si
	
FinAlgoritmo