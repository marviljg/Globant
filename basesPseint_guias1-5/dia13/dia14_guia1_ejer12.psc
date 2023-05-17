Funcion retorno <- primera_mitad ( ms_num )
	Definir retorno, mitad Como Entero
	mitad=trunc(calcularLongitud(ms_num)/2)
	Escribir "mitad para ms es: ", mitad
	//Esto, porque la mitad a veces es impar e.g. 9/2 dara 5
	//y se requiere que sea la mitad par. Por eso, se aumenta a 1
	//Curiosamente, solo pasa en la mitad superior. La inf nunca
	//se ve afectada; siempre sera una mitad par
	Si calcularLongitud(ms_num)%2<>0 Entonces
		mitad=mitad+1
		retorno=trunc(ms_num/10^mitad)
	SiNo
		retorno=trunc(ms_num/10^mitad)
	Fin Si
Fin Funcion

Funcion retorno <- segunda_mitad ( mi_num )
	Definir retorno, mitad Como Entero
	mitad=trunc(calcularLongitud(mi_num)/2)
	Escribir "mitad para ms es: ", mitad
	retorno=trunc(mi_num%10^mitad)
Fin Funcion

//Esta funcion solo nos dara la longitud de el numero ingresado
Funcion retorno <- calcularLongitud ( cL_num )
	Definir retorno Como Entero
	retorno=1
	Mientras trunc(cL_num/10)>0 Hacer
		cL_num=trunc(cL_num/10)
		retorno=retorno+1
	Fin Mientras
Fin Funcion

Funcion retorno <- Comparer ( p_mitad, s_mitad, c_val )
	
	//Mientras retorno<>falso
	//Obtener primer valor de la primera mitad
	//Obtener ultimo valor de la segunda mitad
	//Comparar valores
	//Si son diferentes; retorno==Falso
	//Sino, continuar
	
	//Obtener 2do valor de la primera mitad
	//Obtener PEN-ultimo valor de la segunda mitad
	//Comparar valores
	//Si son diferentes; retorno==Falso
	//Sino, continuar
	Repetir
		secuencia_de_acciones
	Mientras Que retorno==Verdadero
	
	Definir retorno Como Logico
Fin Funcion

Algoritmo dia13_guia1_ejer12
	Definir num, val Como Real
	Definir prim_mitad, sec_mitad como Real
	Definir veredicto Como Logico
	Escribir "Ingrese un numero: "
	num=597823140
	Escribir num
	val=trunc(calcularLongitud(num)/2)
	Escribir "Val: ", val
	prim_mitad=primera_mitad(num)
	sec_mitad=segunda_mitad(num)
	
	Escribir "Primera mitad es: ",prim_mitad
	Escribir "Segunda mitad es: ",sec_mitad
	
	veredicto=Comparer(prim_mitad, sec_mitad, val)
	Escribir "¿",num," es capicúa?: ", veredicto
	
	//Ya podemos usar una Funcion final que, funcione con ambas mitades,
	//pasadas por referencia, y que haga uso de dos funciones más
	//que comprueben los valores (también, pasados por referencia)
FinAlgoritmo



//Truncar regresara el primer valor del numero
//Si tamaño de la potencia==longitud-1 del numero, 
//Solo dara el primer valor del numero
//Despues, hay que truncarlo (y guardarlo) para reducir
//Su tamaño en 1