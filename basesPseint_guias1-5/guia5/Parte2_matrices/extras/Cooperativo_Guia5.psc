Algoritmo Cooperativo_Guia5
	definir matriz, palabra Como Caracter
	definir i Como Entero
	dimension matriz(9,12)
	iniciarMatriz(matriz, 9, 12)
	Escribir "Ingrese las palabras"
	para i<-0 Hasta 8 Hacer
		Leer palabra
		agregarPalabra(matriz, i, Mayusculas(palabra))
	FinPara
	imprimirMatriz(matriz, 9, 12)
	acomodarPalabra(matriz)
	Escribir""
	Escribir"---------------x---------------"
	Escribir""
	imprimirMatriz(matriz, 9, 12)
FinAlgoritmo

SubProceso iniciarMatriz(matriz,filas,columnas)
	definir i, j Como Entero
	Para i<-0 hasta filas-1 Hacer
		Para j<-0 hasta columnas-1 Hacer
			matriz(i,j)="*"
		FinPara
	FinPara
FinSubProceso

SubProceso imprimirMatriz(matriz, filas, columnas)
	definir i, j Como Entero
	Para i<-0 hasta filas-1 Hacer
		Para j<-0 Hasta columnas-1 Hacer
			Escribir Sin Saltar " " , matriz(i,j) , " "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso agregarPalabra(matriz, fila, palabra)
	definir j, long Como Entero
	long=longitud(palabra)
	Para j<-0 Hasta long-1 Hacer
		matriz(fila,j)= subcadena(palabra,j,j)
	FinPara
FinSubProceso

Funcion posicion<- buscarR(matriz, fila)
	definir posicion como entero
	definir r como logico
	posicion=0
	r=falso
	mientras r=falso hacer 
		Si matriz(fila, posicion)="R" o matriz(fila, posicion)="r"  Entonces
			r=Verdadero
		Sino 
			posicion=posicion+1
		FinSi
	FinMientras
FinFuncion

SubProceso acomodarPalabra(matriz)
	definir i,j,z, largo, posicion Como Entero
	definir palabra Como Caracter
	para i<-0 hasta 8 Hacer
		palabra=""
		posicion = buscarR(matriz, i)
		Para j<-0 hasta 11 Hacer
			Si matriz(i,j)<> "*" Entonces
				palabra=Concatenar(palabra,matriz(i,j))
			FinSi
		FinPara
		largo=0
		largo=longitud(palabra)
		z=0
		j=5-posicion
		para j<-5-posicion Hasta largo+4-posicion Hacer
			matriz(i,j)=SubCadena(palabra,z,z)
			z=z+1
		FinPara
		Si posicion<>5 Entonces
			Para j<-0 Hasta 5-posicion-1 Hacer
				matriz(i,j)="*"
			FinPara
		FinSi
	FinPara
FinSubProceso