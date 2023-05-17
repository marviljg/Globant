Algoritmo d10_e2
	Definir lado, i, j Como Entero
	lado=6
	
	Para i<-lado Hasta 1 Con Paso -1 Hacer
		Para j<-1 Hasta lado Con Paso 1 Hacer
			Si i==lado O i==1 o j==1 o j==lado Entonces
				Escribir SIN SALTAR "|",i,",",j,"| "
			SiNo
				Escribir sin saltar "|0,0| "
			Fin Si
			
		Fin Para
		Escribir ""
	Fin Para
	
FinAlgoritmo
