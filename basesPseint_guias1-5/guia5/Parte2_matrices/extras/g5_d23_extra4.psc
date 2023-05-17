SubProceso SuperLlenado(matrizA, matrizB, matrizC, m, n)
	Definir i, j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			matrizC(i,j)=matrizA(i,j)*matrizB(i,j)
		Fin Para
	Fin Para
FinSubProceso

Algoritmo g5_d23_extra4
	Definir matrizA, matrizB, matrizC Como Entero
	Dimension matrizA(3,3), matrizB(3,3), matrizC(3,3)
	LlenarMatriz(matrizA, 3, 3)
	LlenarMatriz(matrizB, 3, 3)
	SuperLlenado(matrizA, matrizB, matrizC, 3, 3)
	imprimeMatriz(matrizA, 3, 3)
	Escribir " "
	imprimeMatriz(matrizB, 3, 3)
	Escribir " "
	imprimeMatriz(matrizC, 3, 3)
FinAlgoritmo

SubProceso LlenarMatriz(this_matriz, M,N)
	Definir i, j, aux Como Entero
	aux=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			aux=azar(8)+1
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