SubProceso Llenar(vector, tamano)
	Definir i Como Entero
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		vector[i]=azar(2)
	Fin Para
FinSubProceso

Funcion retorno <- Prueba(vector1, vector2, tamano)
	Definir retorno Como Logico
	Definir i, conteo Como Entero
	conteo=0
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		Si vector1[i]<>vector2[i] Entonces
			conteo=conteo+1
		Fin Si
	Fin Para
	
	Si conteo=0 Entonces
		retorno=Verdadero
	SiNo
		retorno=Falso
	Fin Si
Fin Funcion

Algoritmo g5_e7
	Definir vector1, vector2, tamano Como Real
	Definir result Como Logico
	result=Falso
	Escribir "¿Tamaño de los vectores?"
	//Leer tamano
	tamano=3
	Dimension vector1[tamano], vector2[tamano]
	Llenar(vector1, tamano)
	Llenar(vector2, tamano)
	ToPrint(vector1, tamano)
	ToPrint(vector2, tamano)
	result=Prueba(vector1, vector2, tamano)
	Escribir "¿Los vectores 1 y 2 son iguales?: ", result
FinAlgoritmo

SubAlgoritmo ToPrint(vector, tamano)
	Definir i Como Entero
	Para i<-0 Hasta (tamano-1) Con Paso 1 Hacer
		Si i=(tamano-1) Entonces
			Escribir vector[i]
		SiNo
			Escribir Sin Saltar vector[i], " "
		Fin Si
	Fin Para
FinSubAlgoritmo

