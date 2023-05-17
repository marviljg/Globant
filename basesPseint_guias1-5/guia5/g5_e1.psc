Algoritmo g5_e1
	Definir vector, i Como Entero
	Dimension vector[5]
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Escribir "Ingresa el valor ", i, ": "
		Leer vector[i]
	Fin Para
	
	Para i<-4 Hasta 0 Con Paso -1 Hacer
		Si i=0 Entonces
			//Solo es para dar formato y, que escriba el \n al terminar
			//y el mensaje de terminación se vaya al final (con un \n).
			Escribir vector[i]
		SiNo
			Escribir sin saltar vector[i]
		Fin Si
	Fin Para
	
FinAlgoritmo
