//Esta función lleva toda la lógica del programa
SubProceso Modificar(pos, char, vector, tamano)
	Definir auxIzq, auxDer Como Entero
	auxIzq=-1
	auxDer=tamano
	
	Si vector[pos]=" " Entonces
		vector[pos]=char
		Escribir "¡Modificación Realizada al 1er Intento!"
	SiNo
		auxIzq=BuscarIzquierda(pos, vector)
		auxDer=BuscarDerecha(pos, vector, tamano)
		Escribir auxIzq, " * ", auxDer
		Si auxIzq=0 Y  auxDer=tamano Entonces
			Escribir "No es posible realizar la modificación; no hay espacios libres"
		SiNo
			//Buscar el valor absoluto mas cercano a la posicion: auxIzq <--- pos ---> auxDer
			//Depende cual este mas cerca, lo llamamos
			Si abs(pos-auxIzq)<abs(pos-auxDer) Entonces
				Escribir "Modificamos por la izquierda: "
				LlenarIzq(pos, char, vector)
			SiNo
				Escribir "Modificamos por la derecha: "
				LlenarDer(tamano, pos, char, vector)
			Fin Si
		Fin Si
	Fin Si
FinSubProceso

SubProceso LlenarIzq(pos, char, vector)
	Definir i Como Entero
	Para i<-0 Hasta (pos-1) Con Paso 1 Hacer
		vector[i]=vector[i+1]
	Fin Para
	vector[pos]=char
FinSubProceso

SubProceso LlenarDer(tamano, pos, char, vector)
	Definir i Como Entero
	Para i<-(tamano-1) Hasta (pos+1) Con Paso -1 Hacer
		vector[i]=vector[i-1]
	Fin Para
	vector[pos]=char
FinSubProceso

//Busca un espacio vacio en la cadena, por la izquierda:
//Inicio -------> Posicion Dada
Funcion retorno <- BuscarIzquierda ( pos, vector )
	Definir retorno, i Como Entero
	retorno=0
	//0 cambiado a 1
	Para i<-0 Hasta (pos-1) Con Paso 1 Hacer
		//Escribir "vector[",i,"] =" vector[i]
		Si vector[i]=" " Entonces
			retorno=i
		Fin Si
	Fin Para
Fin Funcion

//Busca un espacio vacio en la cadena, por la izquierda:
//Posicion Dada <------- Inicio
Funcion retorno <- BuscarDerecha ( pos, vector, tamano )
	Definir retorno, i Como Entero
	retorno=tamano
	Para i<-(tamano-1) Hasta (pos+1) Con Paso -1 Hacer
		//Escribir "vector[",i,"] =" vector[i]
		Si vector[i]=" " Entonces
			retorno=i
		Fin Si
	Fin Para
Fin Funcion

//Parte estructurada del programa
Algoritmo g6_extra_e5
	Definir frase, vector, char Como Caracter
	Definir pos, tamano Como Entero
	tamano=20
	Dimension vector[tamano]
	Escribir "¿Cuál es la frase a trabajar?: "
	
	//Casos prueba. Abajo inmediato es el original
	frase="Hola mundo cruel!"
	//Caso prueba: no hay espacios. Hay 20 letras
	//frase="ABCDEABCDEABCDEABCDE"
	Escribir frase
	
	Escribir "¿Carácter a insertar?: "
	Leer char
	Escribir "¿Posición a insertar?: "
	Leer pos
	Llenar(vector, frase, tamano)
	ToPrint(vector, tamano)
	
	Modificar(pos, char, vector, tamano)
	ToPrint(vector, tamano)
FinAlgoritmo

//Esta función sirve para llenar el vector. Recorta subcadenas de tamaño 1 y la guarda en la posicion iterada
SubProceso Llenar(vector, frase, tamano)
	Definir i Como Entero
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		vector[i]=SubCadena(frase,i,i)
		//Escribir "vector[",i,"] =" vector[i] 
	Fin Para
FinSubProceso

//Esta función solo es para imprimir el vector
SubAlgoritmo ToPrint(vector, tamano)
	Definir i Como Entero
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		Si i=19 Entonces
			Escribir vector[i]
		SiNo
			Escribir Sin Saltar vector[i]
		Fin Si
	Fin Para
FinSubAlgoritmo



