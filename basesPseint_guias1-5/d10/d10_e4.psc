Algoritmo d10_e4
	Definir i, j,dEnd, mult Como Real
	dEnd=5
	mult=1
	
	Para i<-1 Hasta dEnd Con Paso 1 Hacer
		
		mult=mult*i
		Escribir sin saltar "!",i,"="
		
		Para j<-1 Hasta i Con Paso 1 Hacer
			Escribir sin saltar j,"*"
			//Falta hacer que no aparezca un * al final, cuando j=i
		Fin Para
		
		Escribir sin saltar "=",mult
		Escribir ""
		
	Fin Para
	
FinAlgoritmo
