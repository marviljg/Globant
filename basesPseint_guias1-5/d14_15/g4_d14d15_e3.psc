Funcion aux <- divSuesivas2(d_dividendo, d_divisor, d_residuo Por Referencia)
	Definir aux Como Entero
	aux=0
	Repetir
		d_dividendo=d_dividendo-d_divisor
		d_residuo=d_dividendo
		aux=aux+1
	Mientras Que d_dividendo>d_divisor
Fin Funcion

Algoritmo g4_d14d15_e3
	definir dividendo, divisor, cociente, residuo Como Entero	
	dividendo=50
	divisor=13
	residuo=0
	cociente=divSuesivas2(dividendo,divisor,residuo)
	Escribir  "Residuo: ", residuo, ". Cociente: ", cociente
FinAlgoritmo
