SubProceso LlenarAux(matrizGeneral, matrixAuxNum)
	Definir i, j Como Entero
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			matrixAuxNum(i-1,j-1)=ConvertirANumero(matrizGeneral(i,j))
		Fin Para
	Fin Para
FinSubProceso

SubProceso LlenarNum(matriz)
	Definir i, j, suma, aux, mayor Como Entero
	aux=0
	suma=0
	mayor=0
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Para j<-1 Hasta 6 Con Paso 1 Hacer
			aux=azar(99)+1
			matriz(i,j)=ConvertirATexto(aux)
			suma=suma+ConvertirANumero(matriz(i,j))
			Si j=6 Entonces
				matriz(i,j)=ConvertirATexto(suma)
				suma=0
			Fin Si
			Si i=6 Entonces
				matriz(6,j)=ConvertirATexto(ConvertirANumero(matriz(1,j))+ConvertirANumero(matriz(2,j))+ConvertirANumero(matriz(3,j))+ConvertirANumero(matriz(4,j))+ConvertirANumero(matriz(5,j)))
			Fin Si
		Fin Para
	Fin Para
FinSubProceso

SubProceso Llenar2_masVendido(matrizGeneral, matrizTranspuesta)
	Definir i, j, max como entero
	max=0
	Para i<-7 Hasta 7 Con Paso 1 Hacer
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			max=BuscarMayor(matrizTranspuesta, j-1)
			Escribir "Max: ", max
			matrizGeneral(i, j)=ConvertirATexto(max)
		Fin Para
	Fin Para
FinSubProceso

Algoritmo g5_d23_extra7
	Definir matrizGeneral Como Caracter
	Definir matrixAuxNum, auxNumTranspuesta, max Como Entero
	Dimension matrizGeneral(8,7), matrixAuxNum(5,5), auxNumTranspuesta(5,5)
	LlenarLetras(matrizGeneral)
	LlenarNum(matrizGeneral)
	imprimeMatriz(matrizGeneral, 8, 7)
	LlenarAux(matrizGeneral, matrixAuxNum)
	
	Transponer(matrixAuxNum, auxNumTranspuesta, 5, 5)
	
	Escribir " "
	Escribir "Matriz auxiliar: "
	imprimeMatriz(matrixAuxNum, 5, 5)
	Escribir " "
	Escribir "Matriz transpuesta: "
	imprimeMatriz(auxNumTranspuesta, 5, 5)
	
	Escribir " "
	Escribir "Ejemplo de busqueda de máximo: "
	max=BuscarMayor(auxNumTranspuesta, 3)
	Escribir max
	
	Escribir " "
	Escribir "Matriz final: "
	Llenar2_masVendido(matrizGeneral, auxNumTranspuesta)
	imprimeMatriz(matrizGeneral, 8, 7)
FinAlgoritmo

Funcion retorno <- BuscarMayor (matrizTranspuesta, fila)
	Definir i, j, retorno Como Entero
	retorno=-1
	Para i<-fila Hasta fila Con Paso 1 Hacer
		Para j<-0 Hasta 4 Con Paso 1 Hacer
			Si retorno<matrizTranspuesta(i,j) Entonces
				retorno=matrizTranspuesta(i,j)
			Fin Si
		Fin Para
	Fin Para
Fin Funcion

SubProceso Transponer(thisOriginal, thisTranspuesta, m, n)
	Definir i, j Como Entero
	Para i<-0 Hasta m-1 Con Paso 1 Hacer
		Para j<-0 Hasta n-1 Con Paso 1 Hacer
			thisTranspuesta(j,i)=thisOriginal(i,j)
		Fin Para
	Fin Para
FinSubProceso

SubProceso LlenarLetras(matrizGeneral)
	//Filas Inicial
	matrizGeneral(0,0)="          "
	matrizGeneral(0,1)=" Lu"
	matrizGeneral(0,2)=" Ma"
	matrizGeneral(0,3)=" Mi"
	matrizGeneral(0,4)=" Ju"
	matrizGeneral(0,5)=" Vi"
	matrizGeneral(0,6)=" TP"
	
	//Fila FinAlgoritmo
	matrizGeneral(7,0)="          "
	matrizGeneral(7,1)=" 00"
	matrizGeneral(7,2)=" 00"
	matrizGeneral(7,3)=" 00"
	matrizGeneral(7,4)=" 00"
	matrizGeneral(7,5)=" 00"
	matrizGeneral(7,6)=" NA"
	
	//Columnas
	matrizGeneral(1,0)="Producto1  "
	matrizGeneral(2,0)="Producto2  "
	matrizGeneral(3,0)="Producto3  "
	matrizGeneral(4,0)="Producto4  "
	matrizGeneral(5,0)="Producto5  "
	matrizGeneral(6,0)="T. semana  "
	matrizGeneral(7,0)="Mas vendi  "
FinSubProceso

SubProceso imprimeMatriz(matriz, M, N)
	Definir i, j Como Entero
	Para i<-0 Hasta M-1 Con Paso 1 Hacer
		Para j<-0 Hasta N-1 Con Paso 1 Hacer
			//Cambiar el espaciado
			Escribir matriz(i,j), " " Sin Saltar
			Si j>=1 Entonces
				Escribir sin saltar "  "
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso
	