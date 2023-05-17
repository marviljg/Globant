Algoritmo d9_e4
	Definir mult2, mult3,i Como Entero
	mult2=0 
	mult3=0
	
	Para i<-1 Hasta 100 Con Paso 1 Hacer
		Si i%2==0 Entonces
			mult2=mult2+1
		Fin Si
		Si i%3==0 Entonces
			mult3=mult3+1
		FinSi
	Fin Para
	
	Escribir "# de numeros multiplos de 2: ", mult2
	Escribir "# de numeros multiplos de 3: ", mult3
	
FinAlgoritmo


//Prueba del 4
/*
Algoritmo sin_titulo
	
	definir i , alumnos, reprobados, destacados, parcial Como Entero
	definir nota1, nota2, nota3, total, final, max como real
	
	Escribir "INGRESE LA CANTIDAD DE ALUMNOS"
	leer alumnos
	
	total = 0
	final = 0
	reprobados = 0
	destacados = 0
	max = 0
	parcial = 0
	para i <- 1 hasta alumnos Hacer
		Escribir "Ingrese las notas del alumno número ", i
		leer nota1, nota2, nota3
		final = (nota1 * 0.35) + (nota2 * 0.25) + (nota3 * 0.4)
		si final < 6.5 Entonces
			total = total + final
			reprobados = reprobados + 1
		FinSi
		si nota1 > 7.5 Entonces
			destacados = destacados + 1
		FinSi
		si nota2 > max Entonces
			max = nota2
		FinSi
		si nota3 >= 4 y nota3 <= 7.5 Entonces
			parcial = parcial + 1
		FinSi
	FinPara
	
	si reprobados > 0 Entonces
		Escribir "- Nota promedio final de estudiantes reprobados: ", total / reprobados
	SiNo
		Escribir "- No hubo alumnos reprobados"
	FinSi
	
	si destacados > 0 Entonces
		Escribir "- Porcentaje de alumnos con nota de integrador mayor a 7.5: ", destacados * 100 / alumnos, "%"
	SiNo
		Escribir "- No hubo alumnos destacados"
	FinSi
	
	Escribir "- La mayor nota de exposiciones fue ", max
	Escribir "- Total de estudiantes con Parcial entre 4 y 7.5: ", parcial
	
	
FinAlgoritmo
*/