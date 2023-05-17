Algoritmo g5_d22_e4
	Escribir "Diagonal principal en 0´s de una matriz"
	Definir matriz, n Como Entero
	Escribir "¿Dimensión de la matriz cuadrada?: "
	Leer n
	Dimension matriz(n,n)
	
	//Se modifico la función para que llene con 0 donde i=j
	LlenarMatriz(matriz, n, n)
	imprimeMatriz(matriz, n, n)
FinAlgoritmo

SubProceso LlenarMatriz(this_matriz, M,N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Si i=j Entonces
				this_matriz(i,j)=0
			SiNo
				this_matriz(i,j)=azar(9)+1
			Fin Si
		Fin Para
	Fin Para
FinSubProceso

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