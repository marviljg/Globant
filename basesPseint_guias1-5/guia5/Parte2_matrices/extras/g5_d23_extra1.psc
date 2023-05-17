Algoritmo g5_d23_extra1
	Definir matriz, tamano Como Entero
	Escribir "¿Tmaño de la matriz?: "
	Leer tamano
	Dimension matriz(tamano, tamano)
	
	LlenarMatriz(matriz, tamano, tamano)
	imprimeMatriz(matriz, tamano, tamano)
FinAlgoritmo

SubProceso LlenarMatriz(this_matriz, M,N)
	Definir i, j, aux Como Entero
	aux=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			aux=azar(3)+1
			this_matriz(i,j)=aux
		Fin Para
	Fin Para
FinSubProceso

SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso