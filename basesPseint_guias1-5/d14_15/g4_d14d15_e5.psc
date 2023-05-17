Funcion retor <- Espaciado2 ( e_cad )
	Definir retor Como Caracter
	Definir i Como Entero
	Para i<-0 Hasta Longitud(e_cad)-1 Con Paso 1 Hacer
		Escribir Sin Saltar SubCadena(e_cad,i,i), " "
	Fin Para
Fin Funcion

Algoritmo g4_d14d15_e5
	Definir caden Como Caracter
	Escribir "¿Cual es la frase?: "
	caden="Hola, tú"
	Escribir Espaciado2(caden)
	
FinAlgoritmo
