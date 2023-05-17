Algoritmo d4_ejerInvertir
	Definir num, u, d, c, resto Como Real
	Definir letraC,letraD,letraU,palabra1,palabra2 Como Caracter
	Escribir "Ingres un num"
	Leer num
	c=TRUNC(num/100)
	resto=num%100
	d=TRUNC(resto/10)
	resto=num%10
	u=resto
	Escribir c
	Escribir d
	Escribir u
	letraC=ConvertirATexto(c)
	//No es necesario verificar el num de enmedio
	letraD=ConvertirATexto(d)
	letraU=ConvertirATexto(u)
	palabra1=ConvertirATexto(num)
	palabra2=letraU+letraD+letraC
	Escribir palabra1
	Escribir palabra2
	
	Si palabra1==palabra2 Entonces
		Escribir "Si es capicúa"
	Fin Si
FinAlgoritmo
