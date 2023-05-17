Funcion ret <- tempMed ( t_min,t_max )
	Definir ret Como Entero
	ret=(t_min+t_max)/2
Fin Funcion

SubProceso Media(m_min,m_max)
	med=(m_min+m_max)/2
FinSubProceso

Algoritmo g4_d14d15_e2
	Definir numDias, min, max, med,i Como Entero
	Escribir "¿Numero de días a calcular?: "
	Leer numDias
	
	Para i<-1 Hasta numDias Con Paso 1 Hacer
		Escribir "Día ", i
		Escribir "Temperatura minima: "
		Leer min
		Escribir "Temperatura maxima: "
		Leer max
		Escribir tempMed(min,max)
		Escribir ""
	Fin Para
	
FinAlgoritmo
