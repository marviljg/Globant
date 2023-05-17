//Estas 3 primeras funciones obtienen la información necesaria Para la solución
//Solo es precarga de datos necesarios

//Esta funcion solo nos dara la longitud del numero ingresado
//Sirve para poder obtener, despues, las 2 mitades del numero dado
Funcion retorno <- calcularLongitud ( cL_num )
	Definir retorno Como Entero
	retorno=1
	Mientras trunc(cL_num/10)>0 Hacer
		cL_num=trunc(cL_num/10)
		retorno=retorno+1
	Fin Mientras
Fin Funcion

//Regresa la primera mitad del numero
Funcion retorno <- primera_mitad ( ms_num )
	Definir retorno, mitad Como Entero
	mitad=trunc(calcularLongitud(ms_num)/2)
	Si calcularLongitud(ms_num)%2<>0 Entonces
		mitad=mitad+1
		retorno=trunc(ms_num/10^mitad)
	SiNo
		retorno=trunc(ms_num/10^mitad)
	Fin Si
Fin Funcion

//Regresa la segunda mitad del numero
Funcion retorno <- segunda_mitad ( mi_num )
	Definir retorno, mitad Como Entero
	mitad=trunc(calcularLongitud(mi_num)/2)
	retorno=trunc(mi_num%10^mitad)
Fin Funcion

//*** Función principal. It all starts here... ***
Algoritmo dia13_guia1_FINAL
	//1ro.- Definición de variables globales
	Definir num, val Como Real
	Definir prim_mitad, sec_mitad como Real
	Definir veredicto Como Logico
	veredicto=Verdadero
	Escribir "Ingrese un numero: "
	Leer num
	
	//2do.- Uso de funciones para la obtención de información
	//SOLO UN DETALLE: Trate de obtener directo con una función el valor de la mitad. Pero,
	//en algunos lugares redondeaba hacia arriba, otras hacia abajo. Por ello, hasta
	//}despues de obtener la longitud, obtuve mejor su mitad.
	val=trunc(calcularLongitud(num)/2)
	prim_mitad=primera_mitad(num)
	sec_mitad=segunda_mitad(num)
	
	//3ro.- Obtención de resultado con las funciones de obtención de digitos y comparativas.
	Escribir "¿El número ",num," es capicúa?: ", veredicto=solucionador(prim_mitad,sec_mitad, val) 
FinAlgoritmo

//Estas 3 siguientes funciones de abajo hacen el calculo de la solucion
//Funcionan con los datos obtenidos en las anteriores 3

//Compara 1 a 1 el primer y ultimo valor de las dos mitades dadas. s_val es la mitad
//de la longitud total de la cifra y alimenta las iteraciones y cambios en potencias
Funcion ret <- solucionador ( p_mitad Por Referencia, s_mitad Por Referencia, s_val)
	Escribir ""
	Definir i, aX,aY Como Entero
	Definir ret Como Logico
	ret=Verdadero
	aX=0
	aY=0
	Para i<-(s_val-1) Hasta 0 Con Paso -1 Hacer
		aX=PrimerVal(i,p_mitad)
		aY=UltimoVal(s_mitad)
		Si aX<>aY Entonces
			ret=Falso
		Fin Si
	Fin Para
Fin Funcion

//Obtiene el 1er valor de la primera mitad
//Como es paso por Ref, modifica el número de manera global en p_mitad=
Funcion equis <- PrimerVal ( i,p_mitad Por Referencia )
	Definir equis Como Entero
	equis=trunc(p_mitad/10^i)
	p_mitad=trunc(p_mitad%10^i)
Fin Funcion

//Obtiene el Ultimo valor de la segunda mitad
//Como es paso por Ref, modifica el número de manera global en s_mitad=
Funcion ye <- UltimoVal ( s_mitad Por Referencia )
	Definir ye Como Entero
	ye=s_mitad%10
	s_mitad=trunc(s_mitad*0.1)
Fin Funcion

