Algoritmo g5_d23_extra2
	Definir original, transpuesta, m, n Como Entero
	Escribir "¿Tamano de la matriz A[M][N]?: "
	Escribir "¿M (Filas)? : "
	Leer m
	Escribir "¿N? (Columnas): "
	Leer n
	Dimension original(m,n), transpuesta(n,m)
	Llenar(original, m, n)
	ToPrint(original, m, n)
	Transponer(original, transpuesta, m, n)
	Escribir " "
	ToPrint(transpuesta, n, m)
FinAlgoritmo

SubProceso Llenar(thisMatriz, m, n)
	Definir i, j, aux Como Entero
	aux=-1
	Escribir "Valor fuera de aux: ", aux
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			Repetir
				Escribir "Ingrese valor para [",i,"], [",j,"]. Debe estar entre [1,100]"
				Leer aux
				Si aux<=-1 O aux>100 Entonces
					Escribir "El valor es incorrecto"
				SiNo
					Escribir "Valor aceptado"
				Fin Si
			Mientras Que aux<=-1 O aux>100
			thisMatriz(i, j)=aux
		Fin Para
	Fin Para
FinSubProceso

SubProceso Transponer(thisOriginal, thisTranspuesta, m, n)
	Definir i, j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			thisTranspuesta(j,i)=thisOriginal(i,j)
		Fin Para
	Fin Para
FinSubProceso

SubProceso ToPrint(thisMatriz, m, n)
	Definir i, j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir Sin Saltar thisMatriz(i, j), " " 
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso
	