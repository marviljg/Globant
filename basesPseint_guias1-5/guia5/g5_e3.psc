SubProceso Llenado(this_vector, this_tamano)
	Definir i Como Entero
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		this_vector[i]=azar(99)+1
		//leer this_vector[i]
	Fin Para
FinSubProceso

SubProceso PrintVector(this_vector, this_tamano)
	Escribir "Tamaño del vector: ", this_tamano
	Escribir sin saltar "Elementos del vector: "
	Definir i Como Entero
	Para i<-0 Hasta (this_tamano-1) Con Paso 1 Hacer
		Si i=0 Entonces
			Escribir this_vector[i]
		SiNo
			Escribir sin saltar this_vector[i], " "
		Fin Si
	Fin Para
FinSubProceso

SubProceso Buscador(dis_vector, dis_tamano, numBuscar)
	Definir i, gotcha Como Entero
	Definir Triger Como Logico
	Triger=Falso
	gotcha=0
	Para i<-0 Hasta (dis_tamano-1) Con Paso 1 Hacer
		Si dis_vector[i]=numBuscar Entonces
			Triger=Verdadero
			gotcha=i
			Escribir "Valor de i: ", i
		Fin Si
	Fin Para
	
	Si Triger=Verdadero Entonces
		Escribir "!Encontramos al maldito¡, ¡esta en! Vector[",gotcha,"]."
	SiNo
		Escribir "Nunca lo encontramos :("
	Fin Si
FinSubProceso

Algoritmo g5_e3
	Definir vector, tamano, buscar Como Entero
	tamano=azar(10)+1
	Dimension vector[tamano]
	Llenado(vector,tamano)
	PrintVector(vector,tamano)
	
	Escribir "¿Número a buscar?: "
	Leer buscar
	Buscador(vector, tamano, buscar)
FinAlgoritmo
