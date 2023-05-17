SubProceso Llenar(vector, frase)
	Definir i Como Entero
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		vector[i]=SubCadena(frase,i,i)
	Fin Para
FinSubProceso

SubProceso Insertar(pos, char, vector)
	Definir i Como Entero
	Para i<-0 Hasta 19 Con Paso 1 Hacer
		Si i=pos Entonces
			vector[i]=char
		Fin Si
	Fin Para
FinSubProceso

Algoritmo g5_e6
	Definir vector, frase, char Como Caracter
	Definir pos Como Entero
	Dimension vector[20]
	Escribir "Ingrese una frase: "
	//Leer frase
	frase="Hola mundo cruel!XXX"
	Llenar(vector, frase)
	Escribir "Vector antes de la función: "
	ToPrint(vector)
	Escribir ""
	Escribir "Ingrese un caracter insertar en el vector: "
	Leer char
	Escribir "Ingrese la posición donde insertar el char: "
	Leer pos
	Insertar(pos, char, vector)
	Escribir ""
	Escribir "Vector despues de la función: "
	ToPrint(vector)
FinAlgoritmo

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
