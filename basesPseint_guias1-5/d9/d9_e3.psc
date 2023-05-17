Algoritmo d9_e3
	Definir nEstud, integrador, exposicion, parcial, calFinal, contador47,i Como Real
	Definir contador6, contador7, max, porcent7, promedio como real
	//integrador(0.35)+exposicion(0.25)+parcial(0.40)
	contador6=0 
	contador7=0
	calFinal=0
	contador47=0
	Escribir "¿Numero de alumnos?: "
	Leer nEstud
	
	Para i<-1 Hasta nEstud Con Paso 1 Hacer
		
		Escribir "Calificacion del integrador: "
		Leer integrador
		Si integrador>7.5 Entonces
			contador7=contador7+1
		FinSi
		
		Escribir "Calificacion de la expo: "
		Leer exposicion
		Si exposicion>max Entonces
			max=exposicion
		FinSi
		
		Escribir "Calificacion del parcial: "
		Leer parcial
		Si parcial>4 y parcial<7.5 Entonces
			contador47=contador47+1
		Fin Si
		
		calFinal=integrador*0.35+exposicion*0.25+parcial*0.40
		Si calFinal<6.5 Entonces
			promedio=promedio+calFinal
			contador6=contador6+1
		Fin Si
	Fin Para
	
	Escribir "Calificacion promedio de estudiantes reprobados: ", promedio/contador6 
	Escribir "Alumnos con nota de integrador mayor a 7.5.",(contador7*100)/nEstud
	Escribir "Nota mayor de las expo: ", max
	Escribir "# Estudiantes con parcial entre 4.0 y 7.5.",contador47
	
FinAlgoritmo
