Algoritmo d7_ejer3
	Definir num, i, suma Como Real
	Escribir "¿Cuales son los numeros a leer?"
	Leer num
	i=1
	suma=num
	
	Mientras num<>-1 Hacer
		Escribir "Otro numero: "
		Leer num
		suma=suma+num
		Escribir "La suma parcial va en: ", suma
		i=i+1
		Escribir "El contador va en: ", i
	Fin Mientras
	i=i-1
	suma=suma+1
	Escribir "Promedio es: "
	Escribir suma/i
	
FinAlgoritmo
