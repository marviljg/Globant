SubProceso Sumar(s_matriz, M, N)
	Definir i, j, suma Como Entero
	suma=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			suma=suma+s_matriz(i,j)
		Fin Para
	Fin Para
	Escribir "La suma de los elementos de la matriz es: ", suma
FinSubProceso

Algoritmo g5_d22_e3
	Escribir "Suma de los elementos de una matriz de tipo A[M][N]"
	Definir matriz, m, n Como Entero
	Escribir "Tamaño MxN de la matriz: "
	Escribir "M: "
	Leer m
	Escribir "N: "
	Leer n
	Dimension matriz(m, n)
	LlenarMatriz(matriz, m, n)
	imprimeMatriz(matriz, m, n)
	Sumar(matriz, m, n)
FinAlgoritmo

SubProceso LlenarMatriz(this_matriz, M,N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			//Escribir Sin Saltar"Ingresa valores [",i,", ",j,"]"
			this_matriz(i,j)=azar(10)+1
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
