Algoritmo g5_d22_Ejemplo_transpuestaMatriz
	Definir M,N, i, j Como Entero
	Escribir "Ingresa cardinalidad M, N de la matriz original: "
	Leer M,N
	
	Dimension original(M,N), transpuesta(N,M)
	Definir original, transpuesta Como Real
	
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir Sin Saltar"Ingresa valores [",i,", ",j,"]"
			Leer original(i,j)
		Fin Para
	Fin Para
	
	Escribir "Matriz original: "
	imprimeMatriz(original, M, N) 
	
	Para i<-0 hasta M-1
		Para j<-0 hasta N-1
			transpuesta(j,i)=original(i,j)
		FinPara
	FinPara
	
	Escribir ""
	Escribir "Matriz transpuesta: "
	imprimeMatriz(transpuesta, N, M)
	
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
