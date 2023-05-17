Algoritmo d9_e6
	Definir frase,aux Como Caracter
	Definir i Como Entero
	Leer frase
	
	//No es necesario especificar el salto 1, porque lo hara en automatico
	Para i<-Longitud(frase) Hasta 0 Hacer
		Escribir sin saltar SubCadena(frase,i,i)," "
	Fin Para
	
FinAlgoritmo