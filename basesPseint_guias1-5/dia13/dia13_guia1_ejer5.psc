Funcion sent <- seeker ( s_num )
	definir i, sent Como Entero
	sent=0
	Para i<-1 Hasta s_num Con Paso 1 Hacer
		Si s_num%i==0 Entonces
			sent=sent+1
		Fin Si
	Fin Para
Fin Funcion

Algoritmo dia13_guia1_ejer5
	Definir num Como Real
	Definir veredic Como Logico
	Leer num
	Escribir num
	
	Si seeker(num)<=2 o num==1 Entonces
		Escribir "El numero ", num, " ES PRIMO"
	SiNo
		Escribir "El numero ", num, " NO ES PRIMO"
	Fin Si
FinAlgoritmo
