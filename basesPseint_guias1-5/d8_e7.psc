Algoritmo d8_e7
	definir num,i,guess,n,intento Como Entero
	//n, creo, es el numero de intentos a adivinar.
	num=azar(10)+1
	Escribir num
	i=0
	Escribir "¿Cuantas veces quieres adivinar?: "
	Leer intento
	Escribir "¿Cual numero crees que sea?: "
	Leer guess
	
	Mientras i<intento O num<>guess Hacer
		Si guess<num Entonces
			Escribir "Estas abajo del numero: " 
		SiNo
			Escribir "Estas arriba del numero: " 
		Fin Si
		i=i+1
		
		Escribir "¿Cual numero crees que sea?: "
		Leer guess
	Fin Mientras
	
	Escribir "¡Adivinaste!"
	
FinAlgoritmo
