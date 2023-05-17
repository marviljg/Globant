Funcion conteo <- seeker (c_frase,c_letra)
	Definir conteo, i, j Como Real
	j=0
	conteo=0
	
	Para i<-0 Hasta Longitud(c_frase)-1 Con Paso 1 Hacer
		Si SubCadena(c_frase,i,i)==c_letra Entonces
			conteo=conteo+1
		Fin Si
		Escribir "Subcadena es ",SubCadena(c_frase,i,i)
	Fin Para
	
Fin Funcion

Algoritmo dia13_guia1_ejer4
	Definir frase, letra Como Caracter
	Definir veces Como Real
	Escribir "¿Cual es la frase?: "
	Leer frase
	Escribir "¿Cual es la letra?: "
	Leer letra
	
	veces=seeker(frase, letra)
	Escribir "La ", letra, " se encontro en -", frase, "- #", veces, " veces"
	
FinAlgoritmo


