SubProceso Llenar(matriz)
	Definir i, j Como Entero
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 14 Con Paso 1 Hacer
			Si i=0 o i=4 o j=0 o j=14 Entonces
				matriz(i,j)=1
			SiNo
				matriz(i,j)=0
			Fin Si
		Fin Para
	Fin Para
FinSubProceso

Algoritmo g5_d23_extra3
	Definir matriz Como Entero
	Dimension matriz(5, 15)
	Llenar(matriz)
	ToPrint(matriz, 5, 15)
FinAlgoritmo

SubProceso ToPrint(thisMatriz, m, n)
	Definir i, j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir Sin Saltar thisMatriz(i, j), " " 
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso
