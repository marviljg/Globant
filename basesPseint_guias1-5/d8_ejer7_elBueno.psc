Algoritmo d8_ejer7_elBueno
	Definir numAzar, intentos, guess, i Como Entero
	numAzar=azar(10)+1
	Escribir "El numero es: ", numAzar
	i=1
	Escribir"�Cuantos intentos quieres?: "
	Leer intentos
	Escribir "�Cual podria ser el numero?"
	Leer guess
	Escribir "Intento ",i
	Mientras ((i<intentos) Y (guess<>numAzar)) Hacer
		Si guess>numAzar Entonces
			Escribir "Estas arriba del n�mero"
		SiNo
			Escribir "Estas abajo del n�mero"
		Fin Si
		i=i+1
		
		Escribir "�Cual podria ser el numero?"
		Leer guess
		Escribir "Intento ", i
	FinMientras
	Si guess=numAzar Entonces
		Escribir "�Felicidades! �Adivinaste el n�mero!"
	SiNo
		Escribir "Perdiste. El n�mero era: ", numAzar
	FinSi
FinAlgoritmo
