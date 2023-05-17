SubProceso cambiador (valA Por Referencia, valB Por Referencia)
	Definir aux Como Entero
	aux=valA
	valA=valB
	valB=aux
FinSubProceso

Algoritmo g4_d14d15_e1
	Definir A,B Como Entero
	Escribir "Ingresa valores de A y B"
	Leer A, B
	Escribir "Val A: ", A, ". Val B: ", B
	Escribir "Despues del intercambio"
	cambiador(A,B)
	Escribir "Val A: ", A, ". Val B: ", B
FinAlgoritmo
