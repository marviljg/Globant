SubProceso diaAnterior (d_dia Por Referencia, d_mes Por Referencia, d_anho Por Referencia)
	Si d_dia==1 Entonces
		d_dia=30
		Si d_mes==1 Entonces
			d_mes=12
			d_anho=d_anho-1
		SiNo
			d_mes=d_mes-1
		Fin Si
	SiNo
		d_dia=d_dia-1
	Fin Si
	Escribir "dia=", d_dia, ", mes=", d_mes,", año=", d_anho
FinSubProceso

Algoritmo g4_d14d15_e8
	Definir dia, mes, anho Como Entero
	Escribir "Ingresa el día, mes y año: "
	Escribir "Día: "
	Leer dia
	Escribir "Mes: "
	Leer mes
	Escribir "anho: "
	Leer anho
	diaAnterior(dia, mes, anho)
FinAlgoritmo
