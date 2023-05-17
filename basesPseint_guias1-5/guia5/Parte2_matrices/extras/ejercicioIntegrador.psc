Funcion tamano <- definirTamano(muestra)
	Definir tamano Como Entero
	tamano=Longitud(muestra)
	Segun tamano Hacer
		9:
			Escribir "Tamaño de matriz: 3*3"
			tamano=3
		16:
			Escribir "Tamaño de matriz: 4*4"
			tamano=4
		1369:
			Escribir "Tamaño de matriz: 37*37"
			tamano=37
		De Otro Modo:
			Escribir "Valio burger, la muestra es incorrecta :("
			Escribir "Ya nos nos comieron los zombies"
	Fin Segun
Fin Funcion

SubProceso llenarMatriz(matriz, muestra, m)
	Definir i, j, contador Como Entero
	contador=0
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta m-1 Con Paso 1 Hacer
			matriz(i,j)=SubCadena(muestra, contador, contador)
			contador=contador+1
		Fin Para
	Fin Para
FinSubProceso

Algoritmo ejercicioIntegrador
	Definir matriz, muestra Como Caracter
	Definir m Como Entero
	Definir diag1, diag2 Como Logico
	Escribir "¿Muestra?: "
	//Leer muestra
	muestra="CACBCACAC"
	m=definirTamano(muestra)
	
	Dimension matriz(m,m)
	llenarMatriz(matriz, muestra, m)
	imprimeMatriz(matriz, m, m)
	
	//Las bases de la diagona deben ser igual (mismo valor todas)
	diag1=obtenerDiag1(matriz, m)
	Escribir "Valor de diag1: ", diag1
	
	diag2=obtenerDiag2(matriz, m)
	Escribir "Valor de diag2: ", diag2
	
	Si diag1=diag2 Y diag1=Verdadero y diag2=Verdadero Entonces
		Escribir "Ya chingamos!, la muestra es correcta"
	SiNo
		Escribir "Valio burger compañeros, la muestra no salio bien :("
	Fin Si
FinAlgoritmo

Funcion retorno <- obtenerDiag1(matriz, m)
	Definir i, j, aux Como Entero
	Definir letra Como Caracter
	definir retorno Como Logico
	aux=0
	letra=matriz(0,0)
	retorno=Falso
	
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta m-1 Con Paso 1 Hacer
			Si i=j Entonces
				Si letra<>matriz(i,j) Entonces
					aux=aux+1
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	
	Si aux>0 Entonces
		retorno=Falso
	SiNo
		retorno=Verdadero
	Fin Si
Fin Funcion

Funcion retorno <- obtenerDiag2(matriz, m)
	Definir retorno Como Logico
	Definir i, j, baja, aux como entero
	Definir letra Como Caracter
	baja=m-1
	aux=0
	letra=matriz(0,m-1)
	//Escribir "Valor originbal de letra: ", letra
	
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-baja Hasta baja Con Paso 1 Hacer
			Si letra<>matriz(i,baja) Entonces
				aux=aux+1
			Fin Si
			//Escribir "matriz(i,j): ", matriz(i,j)
			//Escribir "Valor de baja: ", baja
			baja=baja-1
		Fin Para
	Fin Para
	
	Si aux>0 Entonces
		retorno=Falso
	SiNo
		retorno=Verdadero
	Fin Si
FinFuncion

SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			Escribir matriz(i,j), " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
