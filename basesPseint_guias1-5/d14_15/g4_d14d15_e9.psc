Funcion retorno <- Sustituir (r_frase, mayus, minus , longitudFrase)
	Definir retorno, aux Como Caracter
	Definir i, contador Como Entero
	contador=0
	retorno=""
	Para i<-0 Hasta (longitudFrase-1) Con Paso 1 Hacer
		aux=SubCadena(r_frase,i,i)
		Si contador>0 y (aux=mayus o aux=minus) Entonces
			retorno=Concatenar(retorno,"*")
		SiNo
			retorno=Concatenar(retorno,aux)
		Fin Si
		
		Si (aux=mayus o aux=minus) Entonces
			contador=contador+1
		Fin Si
		
	Fin Para
Fin Funcion

SubProceso Logic(s_frase Por Referencia, longitudFrase)
	Definir i Como Entero
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Segun i Hacer
			0:
				s_frase=Sustituir(s_frase, "A", "a", longitudFrase)
				Escribir "A: ", s_frase
			1:
				s_frase=Sustituir(s_frase, "E", "e", longitudFrase)
				Escribir "E: ", s_frase
			2:
				s_frase=Sustituir(s_frase, "I", "i", longitudFrase)
				Escribir "I: ", s_frase
			3:
				s_frase=Sustituir(s_frase, "O", "o", longitudFrase)
				Escribir "O: ", s_frase
			De Otro Modo:
				s_frase=Sustituir(s_frase, "U", "u", longitudFrase)
				Escribir "U: ", s_frase
		Fin Segun
	Fin Para
FinSubProceso

Algoritmo g4_d14d15_e9
	Definir frase Como Caracter
	Definir longitudFrase Como Entero
	frase="Habia una vez un barco chiquito, tan chiquito, pero tan chiquito, que no podia navegar"
	//frase="aeiou aeiou aeiou aeiou aeiou aeiou aeiou"
	Escribir "Frase antes: ", frase
	longitudFrase=Longitud(frase)
	Logic(frase, longitudFrase)
	Escribir "Frase despues: ", frase
FinAlgoritmo



