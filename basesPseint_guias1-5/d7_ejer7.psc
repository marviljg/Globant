Algoritmo d7_ejer7
	
	Definir nombreAlumno Como Caracter
	Definir not1, not2, not3 Como Entero
	
	Escribir "¿Nombre del alumno?: "
	Leer nombreAlumno
	
	Mientras nombreAlumno<>"" Hacer
		
		Escribir "¿Nota práctica: ?"
		Leer not1
		Si not1>=0 Y not1<=10 Entonces
			Escribir "¿Nota de los problemas: ?"
			Leer not2
			Si not2>=0 Y not2<=10 Entonces
				Escribir "¿Nota de la teória: ?"
				Leer not3
				Si not3>=0 Y not3<=10 Entonces
					Escribir "Alumno: ", nombreAlumno
					Escribir "Obtuvo ", not1*0.01+not2*0.5+not3*0.4
				SiNo
					Escribir "La nota teórica fue incorrecta "
				Fin Si
			SiNo
				Escribir "La nota de los problemas fue incorrecta "
			Fin Si
		SiNo
			Escribir "La nota practica fue incorrecta "
		Fin Si
		Escribir "Nuevo nombre del alumno: "
		Leer nombreAlumno
	Fin Mientras
	Escribir "¡Bye!"
	
FinAlgoritmo
