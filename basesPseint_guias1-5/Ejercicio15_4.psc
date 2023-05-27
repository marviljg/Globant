Algoritmo sin_titulo
	Definir frase Como Caracter
	Escribir "Ingrese frase para transformar"
	Leer frase
	
	sub(frase)
	
FinAlgoritmo

SubProceso sub ( param ) 
	
	Definir i Como Entero
	Definir elemento, nueva_frase Como Caracter
	nueva_frase = ""
	
	Para i<-0 Hasta Longitud(param) Con Paso 1 Hacer
		
		elemento = SubCadena(param, i , i)
		Escribir elemento
		
		Segun elemento Hacer
			"a":
				nueva_frase = Concatenar(nueva_frase, "@")
			"e":
				nueva_frase = Concatenar(nueva_frase, "#")
			"i":
				nueva_frase = Concatenar(nueva_frase, "$")
			"o":
				nueva_frase = Concatenar(nueva_frase, "%")
			"u":
				nueva_frase = Concatenar(nueva_frase, "*")
				
			De Otro Modo:
				nueva_frase = Concatenar(nueva_frase, elemento)
		Fin Segun
	Fin Para

	Escribir param
	Escribir nueva_frase
	
FinSubProceso

/// a e i o u
/// @ # $ % *
	