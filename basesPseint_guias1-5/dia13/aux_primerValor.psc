//Esta funcion obtiene el primer valor de una cifra de numeros

Algoritmo primerValor
	Escribir "Obtiene el primer valor de un numero "
	Escribir ""
	//Longitud sera 7
	Definir num, i Como Entero
	num=5978321
	Escribir "Longitud: ", Longitud(ConvertirATexto(num))
	Escribir "Valor num: ", num
	Escribir ""
	
	//[longitud-1,0]
	Para i<-6 Hasta 0 Con Paso -1 Hacer
		Escribir "Iteración #: ",i
		Escribir "*a Usar:: ", trunc(num/10^i)
		num=trunc(num%10^i)
		Escribir ""
	Fin Para
	
FinAlgoritmo
