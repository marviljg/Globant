Algoritmo Ejercicio3
	Definir usuario, contrasena, acepta Como Cadena
	Definir login Como Logico
	Definir intentos, numeroDeBotellas, eleccion, i, saldo, temporal Como Entero
	Definir peso Como Real
	intentos = 0
	login = Falso
	
	// usuario == Albus_D
	// contrasena == caramelosDeLimon entonces login == Verdadero
	// Mientras intentos < 3
	Escribir "Ingrese un usuario: "
	Leer usuario
	saldo = 0 
	
	Si usuario == "Albus_D" Entonces
		Hacer
			Escribir "Ingrese una contrasena:"
			Leer contrasena
			
			Si contrasena == "caramelosDeLimon" Entonces
				login = Verdadero
			SiNo
				intentos = intentos + 1
			FinSi
		Mientras Que intentos < 3 Y login <> Verdadero
		
		Si login == Verdadero
			Hacer
				Escribir "1. Ingresar Botellas"
				Escribir "2. Consultar Saldo"
				Escribir "3. Salir"
				Leer eleccion
				
				Segun eleccion
					1:
						Escribir "Cuantas botellas se ingresaran?: "
						Leer numeroDeBotellas
						
						Para i <- 1 Hasta numeroDeBotellas
							peso = Aleatorio(100, 3000)
							Escribir peso
//							Segun peso Hacer
//								peso >= 1501:
//									temporal = 200
//								peso >= 501 Y peso <= 1500:
//									temporal = 125
//								peso <= 500:
//									temporal = 50
//							FinSegun
							Si peso >= 1501 Entonces
								temporal = 200
							SiNo
								Si peso >= 501 Y peso <= 1500 Entonces
									temporal = 125
								SiNo
									temporal = 50
								FinSi
							FinSi
							Escribir "Se le pagara " temporal " por el material, Acepta? (S/N)"
							Leer acepta
							Si Minusculas(acepta) == "s"
								saldo = saldo + temporal
							SiNo
								Escribir "Devolviendo la botella"
							FinSi
						FinPara
					2:
						Escribir "Su saldo es de: $" saldo  
					3:
						Escribir "Gracias por reciclar"
					De Otro Modo:
						Escribir "Ingrese una opcion valida!"
				FinSegun
			Mientras Que eleccion <> 3
		SiNo
			Escribir "Intentos agotados!"
		FinSi
	FinSi
	
	// Menu de opciones 1. Ingresar Botellas 2. Consultar Saldo 3. Salir
	
	//1. Preguntar cuantas botellas se ingresaran
	
	
	
FinAlgoritmo
