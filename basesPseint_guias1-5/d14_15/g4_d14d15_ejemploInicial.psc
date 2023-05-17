Algoritmo g4_d14d15_ejemploInicial
	Definir num Como Entero
	Escribir "Numero a calcular el factorial: "
	leer num
	Escribir "El factorial de ", num, " es ", Factorial(num)
FinAlgoritmo

Funcion f<-Factorial(n)
	Definir f Como Entero
	Si n=0 o n=1 Entonces
		f=1
	SiNo
		f=n*Factorial(n-1)
		Escribir "Vamos de regreso. Valor de f: ", f
	FinSi
FinFuncion
