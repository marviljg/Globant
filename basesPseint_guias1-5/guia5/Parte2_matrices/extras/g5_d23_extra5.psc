SubProceso Llenar(matriz, M)
	Definir i, j, aux Como Entero
	aux=0
	Escribir "Ingresa valores a sumar"
	//M sera el numero de filas
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		//En j iteramos las columnas: 0 -> input, 1 -> input, 2 -> suma
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Segun j Hacer
				0:
					Escribir "Fila ", i+1, ". Val 1: "
					Leer aux
					matriz(i, j)=aux
				1:
					Escribir "Fila ", i+1, ". Val 2: "
					Leer aux
					matriz(i, j)=aux
				2:
					Escribir " "
					matriz(i, j)=matriz(i, 0)+matriz(i, 1)
					Escribir "Suma: ", matriz(i, j)
			Fin Segun
		Fin Para
	Fin Para
	
FinSubProceso

Algoritmo g5_d23_extra5
	Definir matriz, filas Como Entero
	Escribir "¿Cuantas filas tendra nuestra matriz?: "
	Leer filas
	Dimension matriz(filas, 3)
	Llenar(matriz, filas)
	Escribir " "
	Escribir "Matriz completa"
	imprimeMatriz(matriz, filas, 3)
FinAlgoritmo

//Columna N -> j sera siempre 3. Solo se ocuparan las filas; M
SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
			Segun j Hacer
				0:
					Escribir Sin Saltar " + "
				1:
					Escribir Sin Saltar " = "
			Fin Segun
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
