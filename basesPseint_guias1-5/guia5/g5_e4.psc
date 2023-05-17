SubProceso menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
	Definir op, op2 Como Caracter
	op=EscogerOpcion()
	
	//Si se pusiera un "while" para que siguiera entrando mientras no se op<>f. Entonces,
	//regresaria a la función con lo que va despues del caso de "f". Que seria, volver a
	//llamar a la función y pedir un valor de "op"
	Segun op Hacer
		"f":
			Escribir "¡Hasta pronto!"
		"a":
			Llenado(this_vectorA, this_tamano)
			Borrar Pantalla
			menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
		"b":
			Llenado(this_vectorB, this_tamano)
			Borrar Pantalla
			menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
		"c":
			SumaResta(this_vectorA,this_vectorB, this_vectorC, this_tamano, op)
			Borrar Pantalla
			menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
		"d":
			SumaResta(this_vectorA,this_vectorB, this_vectorC, this_tamano, op)
			Borrar Pantalla
			menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
		"e":
			Escribir "¿Vector a imprimir?: A/B/C: "
			Leer op2
			op2=Minusculas(op2)
			Escribir "Opcion escogida: ", op2
			Segun op2 Hacer
				"a":
					ToPrint(this_vectorA, this_tamano)
				"b":
					ToPrint(this_vectorB, this_tamano)
				"c":
					ToPrint(this_vectorC, this_tamano)
			Fin Segun
			menu(this_vectorA,this_vectorB, this_vectorC, this_tamano)
		De Otro Modo:
			Escribir "La opcion es incorrecta"
	Fin Segun
FinSubProceso

Algoritmo g5_e4
	Definir vectorA, vectorB, vectorC, tamano Como Real
	Escribir "¿Cual es el tamaño de los vectores?"
	Leer tamano
	Dimension vectorA[tamano], vectorB[tamano], vectorC[tamano]  
	menu(vectorA, vectorB, vectorC, tamano)
FinAlgoritmo

Funcion retorno <- EscogerOpcion ( )
	Definir retorno Como Caracter
	retorno=""
	Escribir "Opciones: "
	Escribir "A. Llenar vector A de manera aleatoria"
	Escribir "B. Llenar vector B de manera aleatoria"
	Escribir "C: Llenar vector C con A+B"
	Escribir "D. Llenar vector C con A-B"
	Escribir "E. Mostrar un Vector: A, B o C"
	Escribir "F. Salir"
	Escribir "¿Que desea hacer?: "
	leer retorno
	retorno=Minusculas(retorno)
Fin Funcion

SubProceso Llenado(this_vector, this_tamano)
	Definir i Como Entero
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		this_vector[i]=azar(99)+1
		//leer this_vector[i]
	Fin Para
FinSubProceso

SubProceso SumaResta (this_vectorA,this_vectorB, this_vectorC, this_tamano, this_op)
	Definir i Como Entero
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		Si this_op="c" Entonces
			this_vectorC[i]=this_vectorA[i]+this_vectorB[i]
		SiNo
			this_vectorC[i]=this_vectorA[i]-this_vectorB[i]
		Fin Si
	Fin Para
FinSubProceso

SubProceso ToPrint(this_vector, this_tamano)
	Definir i Como Entero
	Escribir "-Se entro en ToPrint- Elementos del vector: "
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		Escribir Sin Saltar this_vector[i], " "
	Fin Para
	Escribir " "
FinSubProceso

//Para menu, tal vez seria mejor un hacer.... bal bla bla Mientras Qopcion<>F
//Llame al menu, haga todo
