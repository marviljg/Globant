SubProceso vectorMatriz(matriz, vector, result)
	Definir i, j, suma Como Entero
	Suma=0
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Segun j Hacer
				0:
					suma=suma+matriz(i,j)*vector(0,0)
				1:
					suma=suma+matriz(i,j)*vector(1,0)
				2:
					suma=suma+matriz(i,j)*vector(2,0)
			Fin Segun
		Fin Para
		Segun i Hacer
			0:
				result(0,0)=suma
				suma=0
			1:
				result(1,0)=suma
				suma=0
			2:
				result(2,0)=suma
				suma=0
		Fin Segun
	Fin Para
FinSubProceso

Algoritmo g5_d23_extra6
	Definir matriz, vector, result como Entero
	Dimension matriz(3,3), vector(3, 1), result(3,1)
	LlenarMatriz(matriz,3,3)
	LlenarMatriz(vector,3,1)
	
	Escribir "Matriz: "
	imprimeMatriz(matriz, 3, 3)
	Escribir "Vector: "
	imprimeMatriz(vector, 3, 1)
	
	vectorMatriz(matriz, vector, result)
	Escribir "Resultado: "
	imprimeMatriz(result, 3, 1)
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
