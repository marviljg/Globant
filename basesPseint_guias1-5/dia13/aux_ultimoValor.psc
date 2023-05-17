//Esta funcion obtiene el ultimo valor de una cifra de numeros

Algoritmo ultimoValor
	Escribir "Obtiene el ultimo valor de un numero "
	Escribir ""
	//Longitud sera 7
	Definir num, i Como Entero
	num=5978321
	Escribir "Longitud: ", Longitud(ConvertirATexto(num))
	Escribir "Valor num: ", num
	Escribir ""
	
	//[1,longitud]
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Iteración #: ",i
		Escribir "*a Usar:: ", num%10
		num=trunc(num*0.1)
		Escribir "Recorte: ",num
		Escribir ""
	Fin Para
	
FinAlgoritmo
