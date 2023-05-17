Funcion retorno <- ObtenerCaporal ( matriz, n, m )
	Definir i, j, retorno como entero
	retorno=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Si i=j Entonces
				retorno=retorno+matriz(i,j)
			Fin Si
		Fin Para
	Fin Para
Fin Funcion

Funcion retorno <- ComprobarFilas ( matriz, M, N, caporal)
	Definir i, j, suma, retorno Como Entero
	retorno=0
	suma=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			suma=suma+matriz(i,j)
		Fin Para
		
		Escribir "Suma de la Fila ", i , ": ", suma
		Si suma=caporal Entonces
			suma=0
		SiNo
			retorno=retorno+1
			suma=0
		Fin Si
	Fin Para
Fin Funcion


Algoritmo g5_d22_e6
	Escribir "Matriz Magica"
	Definir matriz, n, caporal, trans, i, j Como Entero
	Definir boolFilas, boolColumnas Como entero
	
	Repetir
		Escribir "¿Dimension de la matriz?: "
		Leer n
		Si n>10 Entonces
			Escribir "El tamaño de la matriz es incorrecto"
		SiNo
			Escribir "Tamaño de la matriz aceptada: ", n
		Fin Si
	Mientras Que n>10
	Dimension matriz(n,n), trans(n,n)
	
	LlenarMatriz(matriz, n, n)
	imprimeMatriz(matriz, n, n)
	Para i<-0 hasta n-1
		Para j<-0 hasta n-1
			trans(j,i)=matriz(i,j)
		FinPara
	FinPara
	Escribir ""
	imprimeMatriz(trans, n, n)
	
	caporal=ObtenerCaporal(matriz, n, n)
	Escribir "Valor del caporal: ", caporal
	Escribir ""
	
	boolFilas=ComprobarFilas(matriz, n, n, caporal)
	Escribir "¿Valor de las filas es correcto?: ", boolFilas
	
	boolColumnas=ComprobarFilas(trans, n, n, caporal)
	Escribir "¿Valor de las columnas es correcto?: ", boolFilas
	
	Si boolFilas=boolColumnas Entonces
		Escribir "La matriz es mágica"
	SiNo
		Escribir "La matriz no es mágica"
	Fin Si
FinAlgoritmo
//Cosas a mejorar: Convertir a un Subproceso el poder hacer transpuesta de una función
//Creo, es posible controlar la lógica de la funcion ComprobarFilas con booleano
//Entender como manejar los rangos. En LlenarMatriz no estoy usando un "mientras"

//Llenado para aceptar valores con rango entre [1,9]
SubProceso LlenarMatriz(this_matriz, M,N)
	Definir i, j, aux Como Entero
	aux=0
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			aux=azar(3)+1
			Si aux >= 1 Y aux <= 10 Entonces
				this_matriz(i,j)=aux
			SiNo
				j=j-1
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
