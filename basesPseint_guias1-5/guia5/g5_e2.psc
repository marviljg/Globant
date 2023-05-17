SubProceso llenado(this_vector)
	Definir i Como Entero
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		this_vector[i]=azar(99)+1
		//leer this_vector[i]
	Fin Para
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		Segun i Hacer
			0:
				sumaVector(this_vector)
			1:
				restaVector(this_vector)
			De Otro Modo:
				multiplicacionVector(this_vector)
		Fin Segun
	Fin Para
FinSubProceso

Algoritmo g5_e2
	Definir vector Como Real
	Dimension vector[10]
	llenado(vector)
FinAlgoritmo

SubProceso sumaVector(dis_vector)
	Definir i, aux Como real
	aux=0
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		aux=aux+dis_vector[i]
	Fin Para
	Escribir "Suma: ", aux
FinSubProceso

SubProceso restaVector(dis_vector)
	Definir i, aux Como real
	aux=0
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		aux=aux-dis_vector[i]
	Fin Para
	Escribir "Resta: ", aux
FinSubProceso

SubProceso multiplicacionVector(dis_vector)
	Definir i, aux Como Real
	aux=1
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		aux=aux*dis_vector[i]
	Fin Para
	Escribir "Multiplicacion: ", aux
FinSubProceso
