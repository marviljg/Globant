SubProceso LlenarMatriz(this_matriz, M, N, frase)
	Definir i, j, k Como Entero
	k=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			//Cada posicion, mandara llamar el recorte de la frase
			this_matriz(i,j)=SubCadena(frase,k,k)
			k=k+1
		Fin Para
	Fin Para
FinSubProceso

Algoritmo g5_d22_e5
	Escribir "Llenar matriz A3x3 con frase de 9 caracteres"
	Definir matriz, frase Como Caracter
	Dimension matriz(3,3)
	frase="Habilidad"
	LlenarMatriz(matriz, 3,3, frase)
	imprimeMatriz(matriz, 3,3)
FinAlgoritmo

SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso