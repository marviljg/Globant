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
		Si auxIzq=-1 Y  auxDer=tamano Entonces
			Escribir "No es posible realizar la modificación; no hay espacios libres"
		SiNo
			Si auxIzq<>-1 Entonces
				LlenarIzq(auxIzq, pos, char, vector)
				Escribir "Modificación realizada por la izquierda: "
				Escribir "Val de auxIzq: ", auxIzq
			SiNo
				//Aquí, comprobamos y llamamos la parte de la Derecha
				LlenarDer(auxDer, pos, char, vector)
				Escribir "Modificación realizada por la derecha: "
				Escribir "Val de auxIzq: ", auxDer
			Fin Si
		Fin Si
	Fin Si
FinSubProceso

SubProceso LlenarIzq(auxIzq, pos, char, vector)
	Definir i Como Entero
	Para i<-auxIzq Hasta (pos-1) Con Paso 1 Hacer
		vector[i]=vector[i+1]
	Fin Para
	vector[pos]=char
FinSubProceso

SubProceso LlenarDer(auxDer, pos, char, vector)
	Definir i Como Entero
	Para i<-auxDer Hasta (pos+1) Con Paso -1 Hacer
		vector[i]=vector[i-1]
	Fin Para
	vector[pos]=char
FinSubProceso

Funcion retorno <- BuscarIzquierda ( pos, vector )
	Definir retorno, i Como Entero
	//0 cambiado a 1
	Para i<-(pos-1) Hasta 0 Con Paso -1 Hacer
		//Escribir "vector[",i,"] =" vector[i]
		Si vector[i]=" " Entonces
			retorno=i
		SiNo
			retorno=-1
		Fin Si
	Fin Para
Fin Funcion

Funcion retorno <- BuscarDerecha ( pos, vector, tamano )
	Definir retorno, i Como Entero
	Para i<-(pos+1) Hasta (tamano-1) Con Paso 1 Hacer
		//Escribir "vector[",i,"] =" vector[i]
		Si vector[i]=" " Entonces
			retorno=i
		SiNo
			retorno=tamano
		Fin Si
	Fin Para
Fin Funcion

Algoritmo g6_extra_e5
	Definir frase, vector, char Como Caracter
	Definir pos, tamano Como Entero
	tamano=20
	Dimension vector[tamano]
	Escribir "¿Cuál es la frase a trabajar?: "
	Escribir "//Menor a 20 caracteres"
	frase="Holaxmundo cruel!   "
	Escribir "¿Carácter a insertar?: "
	//Leer char
	char="$"
	Escribir "¿Posición a insertar?: "
	//Leer pos
	pos=7
	Llenar(vector, frase, tamano)
	ToPrint(vector)
	Modificar(pos, char, vector, tamano)
	ToPrint(vector)
FinAlgoritmo

SubProceso Llenar(vector, frase, tamano)
	Definir i Como Entero
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		vector[i]=SubCadena(frase,i,i)
		Escribir "vector[",i,"] =" vector[i] 
	Fin Para
FinSubProceso

SubAlgoritmo ToPrint(vector)
	Definir i Como Entero
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Si i=19 Entonces
			Escribir vector[i]
		SiNo
			Escribir Sin Saltar vector[i]
		Fin Si
	Fin Para
FinSubAlgoritmo