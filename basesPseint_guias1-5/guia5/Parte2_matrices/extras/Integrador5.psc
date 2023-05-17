Funcion posicion <- buscarR2 ( matriz, fila )
	Definir posicion como entero
	Definir triger Como Logico
	triger=falso
	posicion=0
	definir i, j Como Entero
	Para i<-fila Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta 11 Con Paso 1 Hacer
			//Escribir Sin Saltar matriz(i,j)
			Si matriz(i,j)="r" y triger=falso Entonces
				posicion=j
				triger=verdadero
			Fin Si
		Fin Para
	Fin Para
Fin Funcion

Algoritmo Integrador5
	Definir matriz Como Caracter
	Definir pos Como entero
	Dimension matriz(9,12)
	inicializarMatriz(matriz, 9, 12)
	imprimirMatriz(matriz, 9, 12)
	Escribir "---------------*---------------"
	agregarPalabra(matriz, 9, 12)
	imprimirMatriz(matriz, 9, 12)
	Escribir "Ejemplo buscar posicion de R en Fila 0: "
	pos=buscarR2( matriz, 0)
	Escribir ""
	Escribir "r pos: ", pos
	
	Escribir "Moviendo palabras: "
	acomodarPalabra(matriz, 9, 12, pos)
	imprimirMatriz(matriz, 9, 12)
FinAlgoritmo

SubProceso inicializarMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			matriz(i,j)="*"
		Fin Para
	Fin Para
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

SubProceso agregarPalabra(matriz, M, N)
	Definir i, j Como Entero
	Definir palabra como Caracter
	palabra=""
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Leer palabra
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			matriz(i,j)=SubCadena(palabra,j,j)
		Fin Para
	Fin Para
FinSubProceso

SubProceso buscarR()
	//Creo no se usara
FinSubProceso

SubProceso acomodarPalabra(matriz, M, N, pivote)
	
FinSubProceso
	