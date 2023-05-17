SubProceso Buscar(Matriz, num)
	Definir i, j, n, m Como Entero
	Definir triger Como Logico
	triger=Falso
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Si matriz(i,j)=num Entonces
				triger=Verdadero
				n=i
				m=j
			Fin Si
		Fin Para
	Fin Para
	
	Si triger=Verdadero Entonces
		Escribir "Se encontro el valor ", num, " en [", n, "], [",m,"]."
	SiNo
		Escribir "No se encontro el valor buscado"
	Fin Si
	
FinSubProceso

Algoritmo g5_d22_e2
	Definir matriz, i, j, toSearch Como Entero
	Dimension matriz(5,5)
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			matriz(i,j)=azar(100)+1
		Fin Para
	Fin Para
	
	imprimeMatriz(matriz,5,5)
	
	Escribir "¿Cual es el número a buscar?: "
	Leer toSearch
	Buscar(matriz, toSearch)
	
FinAlgoritmo

//Funcion para imprimir la Matrices. Recime como Matriz A[M], [N]
SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso