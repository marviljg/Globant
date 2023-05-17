Algoritmo d10_e1
	Definir numVendedores, sueldoBase, ventasRealizadas, cobroPorVenta, i, j, suma Como Real
	Definir nombreVendedor Como Caracter
	Escribir "¿Numero de vendedores?: "
	Leer numVendedores
	suma=0
	
	Para i<-1 Hasta numVendedores Con Paso 1 Hacer
		Escribir "¿Nombre del vendedor?: "
		Leer nombreVendedor
		
		Escribir "¿Sueldo base?: "
		Leer sueldoBase
		
		Escribir "¿Ventas realizadas?: "
		Leer ventasRealizadas
		Para j<-1 Hasta ventasRealizadas Con Paso 1 Hacer
			Escribir "¿Cobro por la venta No.",j,"?: "
			Leer cobroPorVenta
			suma=suma+cobroPorVenta
		Fin Para
		Escribir "Pago de comisiones a ", nombreVendedor,": ",suma*0.1
		Escribir "Sueldo total a ", nombreVendedor, ": ", suma*0.1+sueldoBase
		suma=0
	Fin Para
	
FinAlgoritmo
