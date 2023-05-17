Algoritmo d9_e2
	Definir frase,aux Como Caracter
	Definir i Como Entero
	Leer frase
	Para i<-0 Hasta Longitud(frase) Con Paso 1 Hacer
		aux=SubCadena(frase,i,i)
		Escribir sin saltar aux," "
	Fin Para
FinAlgoritmo
