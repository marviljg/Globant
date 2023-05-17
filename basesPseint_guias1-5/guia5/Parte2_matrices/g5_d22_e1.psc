Algoritmo g5_d22_e1
	Definir matriz, i, j Como Entero
	Dimension matriz(3,3)
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			matriz(i,j)=azar(10)+1
		Fin Para
	Fin Para
	
	imprimeMatriz(matriz,3,3)
FinAlgoritmo

//Funcion para imprimir la Matrices. Recime como Matriz A[M]N[]
SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso