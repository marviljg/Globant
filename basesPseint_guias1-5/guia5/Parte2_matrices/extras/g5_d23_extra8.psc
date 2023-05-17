SubProceso TotalVentas(matrizNum)
	Definir i, j, sumaT como entero
	sumaT=0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			sumaT=sumaT+matrizNum(i,j)
		Fin Para
	Fin Para
	Escribir "Ventas Totales: ", sumaT
FinSubProceso

SubProceso VentasPorVendedor(matrizNum, vendedor)
	Definir i, j, suma Como Entero
	suma=0
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-vendedor-1 Hasta vendedor-1 Con Paso 1 Hacer
			suma=suma+matrizNum(i,j)
		Fin Para
	Fin Para
	Escribir "Para vendedor ", vendedor, ". Ventas: ", suma
FinSubProceso

SubProceso VentasPorZona(matrizNum, zona)
	Definir i, j, suma Como Entero
	suma=0
	Para i<-zona-1 Hasta zona-1 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			suma=suma+matrizNum(i,j)
		Fin Para
	Fin Para
	Escribir "Para zona ", zona, ". Ventas: ", suma
FinSubProceso

SubProceso LlenarNum(matriz, matrizNumerica)
	Definir i, j, aux Como Entero
	aux=0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			//Esto es el punto a) Solo cambiarlo a un "Leer"
			aux=azar(9)+1
			matrizNumerica(i-1,j-1)=aux
			matriz(i,j)=ConvertirATexto(aux)
		Fin Para
	Fin Para
FinSubProceso

SubProceso Brain(matrizNum)
	
	Escribir "----------------------------------------------------------------------------------"
	Definir zona, vendedor Como Entero
	Definir op Como Caracter
	Escribir "Selecciona opcion: "
	Escribir "1. Total de ventas por Zona"
	Escribir "2. Total de ventas por vendedor"
	Escribir "3. Ventas globales"
	Escribir "Press Any other key to END"
	Leer op
	
	Segun op Hacer
		"1":
			Escribir "¿Zona a filtrar? 1-Norte, 2-Sur, 3-Este, 4-Oeste, 5-Centro"
			Leer zona
			VentasPorZona(matrizNum, zona)
			Brain(matrizNum)
		"2":
			Escribir "¿Vendedor a filtrar? 1-Vendedor1, 2-Vendedor2, 3-Vendedor3, 4-Vendedor4"
			Leer vendedor
			VentasPorVendedor(matrizNum, vendedor)
			Brain(matrizNum)
		"3":
			Escribir "Total de ventas fue: "
			TotalVentas(matrizNum)
			Brain(matrizNum)
		De Otro Modo:
			Escribir "Siiyiu!"
	Fin Segun
FinSubProceso

Algoritmo g5_d23_extra8
	Definir matriz como caracter
	Definir matrizNumerica Como Entero
	Dimension matriz(6,5), matrizNumerica(5,4)
	LlenarEncabezados(matriz)
	LlenarNum(matriz, matrizNumerica)
	Escribir "Tabla general: "
	imprimeMatriz(matriz, 6, 5)
	
	//Escribir " "
	//Escribir "Solo numeros: "
	//imprimeMatriz(matrizNumerica, 5, 4)
	
	//VentasPorVendedor(matrizNumerica, 1)
	//VentasPorZona(matrizNumerica, 5)
	//TotalVentas(matrizNumerica)
	//Escribir "Pruebas abajo: "
	Brain(matrizNumerica)
FinAlgoritmo

SubProceso LlenarEncabezados(matriz)
	Definir i, j Como Caracter
	//Llena las filas con los vendedores
	matriz(0,1)="V1"
	matriz(0,2)="V2"
	matriz(0,3)="V3"
	matriz(0,4)="V4"
	
	//LLena las columnas con las zonas
	matriz(0,0)="  "
	matriz(1,0)="N "
	matriz(2,0)="S "
	matriz(3,0)="E "
	matriz(4,0)="O "
	matriz(5,0)="C "
FinSubProceso

SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso