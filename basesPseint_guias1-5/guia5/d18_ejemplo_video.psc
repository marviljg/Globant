Algoritmo d18_ejemplo_video
	Dimension valores(5)
	Definir i, valores Como Entero
	
	Escribir "Ingresa 5 valores enteros"
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Leer valores(i)
	Fin Para
	
	Escribir "Los valores ingresado en forma invertida son: "
	
	Para i=4 Hasta 0 Con Paso -1 Hacer
		Si i=0
			escribir valores(i)
		SiNo
			Escribir valores(i), ", " Sin Saltar
		FinSi
	Fin Para
	
FinAlgoritmo
