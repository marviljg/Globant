Algoritmo Ej_integrador_4
	menu()
FinAlgoritmo

SubProceso menu()
	Definir op Como Entero
	
	Escribir "Elige una de las siguientes opciones: "
	Escribir "1. Calcular muro de ladrillo"
	Escribir "2. Calcular viga de hormigón"
	Escribir "3. Calcular columnas de hormigón"
	Escribir "4. Calcular contrapisos"
	Escribir "5. Calcular techo"
	Escribir "6. Calcular pisos"
	Escribir "7. Calcular pintura"
	Escribir "8. Calcular iluminacion"
	Escribir "9. Salir"
	Leer op 
	
	Segun op Hacer
		1: calcularMuro()
			Esperar Tecla
			Borrar Pantalla
			menu()
		2: calcularViga()
			Esperar Tecla
			Borrar Pantalla
			menu()
		3: calcularColumna()
			Esperar Tecla
			Borrar Pantalla
			menu()
		4:  Contrapisos
			Esperar Tecla
			Borrar Pantalla
			menu()
		5: 	calcularTecho()
			Esperar Tecla
			Borrar Pantalla
			menu()
		6: calcularPisos()
			Esperar Tecla
			Borrar Pantalla
			menu()
		7: calcularPintura()
			Esperar Tecla
			Borrar Pantalla
			menu()
		8: calcularIluminacion()
			Esperar Tecla
			Borrar Pantalla
			menu()
		9: Escribir ""
			Escribir "_________________________________________________________"
			Escribir "                   ¡HASTA LA PROXIMA!                    "
			Escribir "_________________________________________________________"
			Escribir ""
			
		De Otro Modo:
			Escribir ""
			Escribir "_________________________________________________________"
			Escribir "  La opcion ingresada es incorrecta, intenta nuevamente  "
			Escribir "_________________________________________________________"
			Escribir ""
			menu()
	FinSegun
FinSubProceso

SubProceso calcularMuro()
	Borrar Pantalla
	definir muro como entero 
	definir largo, alto Como Real
	
	escribir "Selecciona el valor de espesor"
	escribir "20 o 30 cm"
	leer muro
	
	mientras muro <> 20 y muro <> 30 Hacer
		escribir "Selecciona el valor de espesor"
		escribir "20 o 30 cm"
		leer muro
	FinMientras
	
	escribir "Ingrese el largo"
	leer largo
	escribir "Ingrese el alto"
	leer alto
	
	Si muro == 30 Entonces
		Escribir "Para un muro de 30 cm se necesita:"
		escribir RetornaSuperficie(largo, alto) * 15.2, "kg de cemento"
		escribir RetornaSuperficie(largo, alto) * 0.115, " m^3 de arena"
		escribir RetornaSuperficie(largo, alto) * 120, " ladrillos"
	SiNo
		Escribir "Para un muro de 20 cm se necesita:"
		escribir RetornaSuperficie(largo, alto) * 10.9, "kg de cemento"
		escribir RetornaSuperficie(largo, alto) * 0.09, "m^3 de arena"
		escribir RetornaSuperficie(largo, alto) * 90, " ladrillos"
	Fin Si
FinSubProceso

subproceso calcularViga()	
	Borrar Pantalla
	definir largo,cemento,arena,piedra, hierro8, hierro4 como real
	escribir "Ingrese largo de la viga"
	leer largo
	cemento=9*largo
	arena=0.02*largo
	piedra=0.02*largo
	hierro8=4*largo
	hierro4=3*largo
	escribir sin saltar "Necesitará ",cemento," m3 de cemento, "
	escribir sin saltar arena," m3 de arena, "
	escribir sin saltar piedra," m3 de piedra, "
	escribir sin saltar hierro8," m de hierro8 y "
	escribir sin saltar hierro4," m de hierro4, "
FinSubProceso

SubProceso calcularColumna()
	Borrar Pantalla
	definir largoColumna Como real
	Escribir "ingrese el largo de la columna en metros"
	leer largoColumna
	
	escribir "para una columna de largo ", largoColumna, " metros, se requieren: "
	escribir largoColumna * 7.5 " kg de cemento"
	escribir largoColumna * 0.016 " m^3 de cemento"
	escribir largoColumna * 0.016 " m^3 de piedra"
	escribir largoColumna * 6 " m de hierro del 10"
	escribir largoColumna * 3 " m de hierro del 4"
FinSubProceso


SubProceso Contrapisos
	//Nos debe pedir espesor, ancho y largo del contrapiso a calcular.
	//Por metro cúbico de contrapiso se necesita: 105 kg de cemento, 0.45 m3 de arena y 0.9 m3 de piedra.
	Borrar Pantalla
	Definir Largotxt Como Real
	Definir Altotxt Como Real
	Definir Espesortxt Como Real
	
	Escribir "Proporciona Las Medidas del Contrapiso (Largo, Ancho y Espesor)"
	Leer Largotxt
	Leer Altotxt
	Leer Espesortxt
	
	
	Escribir "Las medidas del Contrapiso son; ",Largotxt ," de Largo, ",Altotxt, " de Alto y ", Espesortxt, "de espesor"
	Escribir "Su Area es;", calcularVolumen(Espesortxt, Largotxt, Altotxt)
	Escribir "Para realizar esto son necesarios los siguientes Materiales"
	Escribir "1.-",calcularVolumen(Espesortxt, Largotxt, Altotxt) * 105," Kg de Cemento"
	Escribir "2.-",calcularVolumen(Espesortxt, Largotxt, Altotxt) * .45," m3 de Arena"
	Escribir "3.-",calcularVolumen(Espesortxt, Largotxt, Altotxt) *.9," m3 de Piedra"
	
	
FinSubProceso

SubProceso calcularTecho()
	Borrar Pantalla
	Definir esp, ancho, largo, resVolumen Como Real
	Escribir "Ingresa los valores que se solicitan: "
	Escribir Sin Saltar "Espesor: "
	Leer esp
	Escribir Sin Saltar "Ancho: "
	Leer ancho
	Escribir Sin Saltar "Largo: "
	Leer largo 
	
	resVolumen = calcularVolumen(esp, ancho, largo)
	
	Escribir ""
	Escribir "El techo cuenta con un volumen de: " resVolumen " m3"
	Escribir "_________________________________________________________"
	Escribir "            Para su construccion se necesita:            "
	Escribir "_________________________________________________________"
	Escribir "Cemento: " resVolumen * 33 " kg" 
	Escribir "Arena: " resVolumen * 0.072 " m3"
	Escribir "Piedra: " resVolumen * 0.072 " m3"
	Escribir "Hierro del 8: " resVolumen * 7 " m"
	Escribir "Hierro del 6: " resVolumen * 4 " m"
	Escribir "_________________________________________________________"
	Escribir ""
	
FinSubProceso

SubProceso calcularPisos()
	Borrar Pantalla
	definir ancho, largo, superficie como real
	
	escribir "Ingrese el largo del paño del piso"
	leer largo
	escribir "Ingrese el ancho del paño del piso"
	leer ancho
	
	superficie = RetornaSuperficie(largo, alto)
	Escribir "La superficie total es ", superficie + (superficie*0.1), "m^2"
FinSubProceso

SubProceso calcularPintura()
	Borrar Pantalla
	Definir superficie_muro Como Real
	Escribir "¿Cuál es la superficie del muro a pintar?: "
	Leer superficie_muro
	Escribir "Se requieren ", (superficie_muro/6), " litros."
FinSubProceso

SubProceso calcularIluminacion()
	Borrar Pantalla
	Definir superfice_habitacion Como Entero
	Escribir "¿Cuál es la superficie del muro a pintar?: "
	Leer superfice_habitacion
	Escribir "Iluminación necesaria: ", (superfice_habitacion*0.2)
FinSubProceso

Funcion volumen <- calcularVolumen(esp, ancho, largo)
	Definir volumen Como Real
	volumen = esp * ancho * largo
FinFuncion

Funcion Area <- RetornaSuperficie(Ancho, Largo)
	Definir Area Como Real
	Area= Ancho*Largo
FinFuncion
