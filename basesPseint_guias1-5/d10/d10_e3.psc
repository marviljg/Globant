Algoritmo d10_e3
	Definir i, j,dEnd, mult Como Real
	dEnd=5
	mult=1
	
	Para i<-1 Hasta dEnd Con Paso 1 Hacer
		Para j<-1 Hasta dEnd Con Paso 1 Hacer
			mult=mult*j
			Escribir "!",i,"=",mult
		Fin Para
	Fin Para
	
FinAlgoritmo
