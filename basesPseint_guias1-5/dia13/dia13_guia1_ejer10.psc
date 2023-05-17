Funcion retorno <- adderPlus ( c_num )
	definir retorno, aux, aux2, i Como Entero
	aux=c_num
	retorno=0
	
	//Bien pudo usarse 
	Para i<-1 Hasta Longitud(ConvertirATexto(c_num)) Con Paso 1 Hacer
		//Obtener el ultimo digito del numero
		aux=c_num%10
		Escribir "Valor de aux: ", aux
		//Se va quitando una unidad (derecha) al valor y se va guardando
		//Actualizar
		c_num=trunc(c_num/10)
		Escribir "Valor de c_num: ", c_num
		retorno=retorno+aux
	Fin Para
Fin Funcion

Funcion retorno <- adder ( dig1, dig2 )
	Definir retorno como entero
	retorno=dig1+dig2
Fin Funcion

Algoritmo dia13_guia1_ejer10
	Definir num Como Entero
	Escribir "¿Cual es el numero?: "
	Leer num 
	//Escribir "Suma de los digitos de ", num, " es: ", adder(trunc(num/10), num%10)
	Escribir "Prueba: ", adderPlus(num)
	
FinAlgoritmo
