Algoritmo ifs_anidados
	Definir correoSinLeer,solicitudEmergencia,solicitudesEjecutivos Como Entero
	Definir ingresoMarketing Como Logico
	ingresoMarketing=Verdadero
	correoSinLeer=6
	solicitudEmergencia=1
	solicitudesEjecutivos=3
	ingresoMarketing=Verdadero
	Escribir "Iniciar sesión como administrador"
	Si ingresoMarketing==Verdadero Entonces
		Escribir "Buscar los últimos ingresos publicitarios en los informes de marketing."
		Escribir "Completar Hoja de calculos de ingresos mensuales"
		Escribir "Revisar correo"
		Si correoSinLeer<10 Entonces
			Escribir "Revisa correo de voz para ver si hay alguna solicitud de los ejecutivos."
			Si solicitudEmergencia>0 Entonces
				Escribir "Hacer solicitud de emergencia"
			FinSi
			Si solicitudesEjecutivos>0 Entonces
				Escribir "Realizar solicitudes"
			FinSi
			Escribir "Mandar correo terminación de solicitudes"
		Fin Si
	FinSi
	Escribir "Apagar computadora"
	Escribir "Regar planta"
FinAlgoritmo
