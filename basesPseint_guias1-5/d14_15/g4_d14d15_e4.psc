Funcion ret <- Vocales ( v_str, vocal1, vocal2,  symbol )
	Definir ret, aux Como Caracter
	Definir i Como Entero
	ret=""
	Para i<-0 Hasta Longitud(v_str)-1 Con Paso 1 Hacer
		aux=SubCadena(v_str,i,i)
		Si aux==vocal1 o aux==vocal2 Entonces
			ret=Concatenar(ret,symbol)
		SiNo
			ret=Concatenar(ret,aux)
		Fin Si
	Fin Para
Fin Funcion

SubProceso Sustituir (s_orig, s_nueva Por Referencia)
	Definir i Como Entero
	s_nueva=s_orig
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Segun i Hacer
			1:
				s_nueva=Vocales(s_nueva, "a", "A", "@")
			2:
				s_nueva=Vocales(s_nueva, "e", "E", "#")
			3:
				s_nueva=Vocales(s_nueva, "i", "I", "$")
			4:
				s_nueva=Vocales(s_nueva, "o", "O", "%")
			De Otro Modo:
				s_nueva=Vocales(s_nueva, "u", "U", "*")
		Fin Segun
	Fin Para
FinSubProceso

Algoritmo g4_d14d15_e4
	Definir orig, nueva Como Caracter
	orig="Ayer, lunes, salimos a las once y 10."
	nueva=""
	Sustituir(orig,nueva)
	Escribir nueva
FinAlgoritmo
