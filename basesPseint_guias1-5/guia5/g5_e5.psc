Funcion retorno <- BuscarMayor (this_vector, this_tamano)
	Definir retorno, i Como Real
	retorno=this_vector[0]
	Para i<-0 Hasta this_tamano-1 Con Paso 1 Hacer
		Si this_vector[i]>retorno Entonces
			retorno=this_vector[i]
		Fin Si
	Fin Para
Fin Funcion

Algoritmo g5_e5
	Definir vector, tamano, max Como real
	Escribir "¿Tamaño del vector?: "
	Leer tamano
	Dimension vector[tamano]
	Llenado(vector, tamano)
	ToPrint(vector, tamano)
	max=BuscarMayor(vector, tamano)
	Escribir "Valor maximo encontrado: ", max
FinAlgoritmo

SubProceso ToPrint(this_vector, this_tamano)
	Definir i Como Entero
	Escribir "-Se entro en ToPrint- Elementos del vector: "
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		Escribir Sin Saltar this_vector[i], " "
	Fin Para
	Escribir " "
FinSubProceso

SubProceso Llenado(this_vector, this_tamano)
	Definir i Como Entero
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		this_vector[i]=azar(99)+1
		//leer this_vector[i]
	Fin Para
FinSubProceso