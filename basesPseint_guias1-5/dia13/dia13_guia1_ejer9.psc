Funcion retorno <- calc ( c_turno,c_horas,c_festivo )
	Definir retorno Como Real
	Si c_turno=="diurno" Entonces
		retorno=c_horas*90
		Si c_festivo=="si" Entonces
			retorno=retorno*1.1
		Fin Si
	SiNo
		retorno=c_horas*125
		Si c_festivo=="si" Entonces
			retorno=retorno*1.5
		Fin Si
	Fin Si
Fin Funcion

Algoritmo dia13_guia1_ejer9
	Definir nombre, dia, turno, festivo Como Caracter
	Definir horas como real
	
	Escribir "¿Nombre del trabajador?: "
	Leer nombre
	Escribir "¿Día de la semana?: lun/mar/mir/juv/vir/sab/dom"
	Leer dia
	dia=Minusculas(dia)
	Escribir "¿Turno? diurno/nocturno: "
	Leer turno
	turno=Minusculas(turno)
	Escribir "¿Horas trabajadas?: "
	Leer horas
	Escribir "¿Día festivo?: si/no"
	Leer festivo
	
	Escribir nombre, " trabajo el ", dia,". Turno: ", turno ". #Horas: ", horas, ". ¿Festivo?: ", festivo
	Escribir "Pago del día: ", calc(turno, horas, festivo)
FinAlgoritmo


