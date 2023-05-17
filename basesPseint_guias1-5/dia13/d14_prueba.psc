Algoritmo prueba
	Definir num,i Como Entero
	//Longitud 7
	num=57938
	Escribir "Valor original de num: ", num
	Escribir ""
	
	Para i<-4 Hasta 0 Con Paso -1 Hacer
		Escribir "Valor de 10 a la i: " 10^i
		Escribir "Valor de i: ", i, ". Valor de num: ", num
		Escribir "Prueba: ", trunc(num/10^i)
		num=trunc(num%10^i)
		Escribir ""
	Fin Para
FinAlgoritmo